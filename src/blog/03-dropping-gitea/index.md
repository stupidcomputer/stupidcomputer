# Migrating from a self-hosted Gitea to Github

I've recently disabled my self-hosted Gitea instance and moved all my repositories from it to [Github](https://github.com/stupidcomputer).
The primary impetus for this is a lack of available disk space on my VPS &mdash; I had run out of space on the ~25G main partition and I needed to trim some ballast to restore critical functionality.
I saw that the Gitea installation was taking up the most space and so I removed it.

I'm not overjoyed about the situation, but ultimately I had to choose a service to remove, and Gitea was the service with the highest disk space utilization.
However, since Git is somewhat standardized by way of its canonical implementation, I'm not really concerned about interoperability issues.
I think it'd be quite short-sighted for Github to remove the feature that composes half of its name; regardless, should the situation change I'll be more than happy to configure a lighter-weight self-hosted solution.

This leaves the only concern being adverse [network effects](https://en.wikipedia.org/wiki/Network_effect).
Unfortunately, this is something I cannot really do anything about.
In order to propose changes one must have a Github account.
For those requiring another method for patch submission, I've made available a [patches email address](mailto:patches+ryan@beepboop.systems).
I'm under no illusions here &mdash; my repositories so far have received no contributions.
I know that this email is useless by way of my unpopularity.
Nevertheless, the option exists should one need it.

While I've moved house to Github, I've taken some chances to reduce my overall disk utilization on my VPS.
Website content on beepboop.systems (this domain) is no longer stored on-disk.
Instead, it's stored on Github Pages and proxied.
Using an [action](https://github.com/stupidcomputer/stupidcomputer/blob/b68f96a206fa3b0c8125f18c83a96202ebb63df3/.github/workflows/static.yml), my website rebuilds using my weird [static site generator](https://github.com/stupidcomputer/sssg) whenever a change is pushed to `main`.
Because of this migration, requests for beepboop.systems are proxied via [this nginx configuration](https://github.com/stupidcomputer/dot_testing/blob/fe6b4556a43d7a2957b200258bd752c6b503e1a9/boxes/netbox/nginx.nix):

```nix
{
    services.nginx.virtualHosts."beepboop.systems" = {
        forceSSL = true;
        enableACME = true;
        locations."/" = {
            extraConfig = ''
                port_in_redirect off;
                absolute_redirect off;
            '';
            proxyPass = "https://stupidcomputer.github.io/stupidcomputer/";
        };
    };
}
```

I'm also doing caching so the site isn't unbearably slow.

Surprisingly, this appears to not be against the terms of service of Github Pages.
I guess I'll really find out if I get an email from their support team, but looking at the [about page for Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/about-github-pages#guidelines-for-using-github-pages) there doesn't seem to be any specific prohibition on what I'm doing.
