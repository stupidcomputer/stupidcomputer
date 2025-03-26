<h1 class="heading-right">
    Ryan Marina
    <img id="me" class="right" alt="A picture of myself" src="./picture.jpeg">
</h1>

<div class="heading-nudge">
<a href="https://github.com/stupidcomputer">github</a>,
<a href="mailto:ryan@beepboop.systems">email</a>,
<a href="/blog">blog</a>,
<a href="#" id="discordlink">discord</a>
</div>

<script>
let discordlink = document.getElementById("discordlink");
function handler(e) {
    newelem = document.createElement("span");
    newelem.innerHTML = "@hmmstmachine (rarely checked)";
    discordlink.innerHTML = newelem.innerHTML;
    discordlink.parentNode.replaceChild(newelem, discordlink);
}
discordlink.addEventListener("click", handler);
</script>

Hi there!
I'm a high schooler with a keen interest in using NixOS, participating in concert and orchestral ensembles, and partaking in mock legislative conferences.
I also enjoy learning about cybersecurity &mdash; both offense and defense &mdash; and the extent of the corrosive effect modern tools of warfare have had on the security of critical infrastructure.
In particular, I'm interested in aiding the defense of critical infrastructure systems that sustain everyday human life from Internet and digital attacks.

## Computational endeavors

As any good user of a Unix-like operating system, I have an [immaculate collection of dotfiles](https://github.com/stupidcomputer/dot_testing) that I have spent an inordinate amount of time tweaking.
Some early projects included [a](https://github.com/stupidcomputer/pychaos) [metric](https://github.com/stupidcomputer/modbot) [ton](https://github.com/stupidcomputer/botanybot) [of](https://github.com/stupidcomputer/chaosbot) [IRC](https://github.com/stupidcomputer/coinminer) [bots](https://github.com/stupidcomputer/universalducks), and a [Mastodon bot](https://github.com/stupidcomputer/mastosnake).
I also wrote a [hobby secure messenger](https://github.com/stupidcomputer/secmsg) that you most definitely should not use.

I also self-host various things, like [marching.beepboop.systems](https://marching.beepboop.systems) &mdash; a collection of archival materials with regards to the marching arts.
[explorer](https://franklincce.beepboop.systems/explorer) is a tool for looking at previous Youth in Government and Model UN resolutions and bills.

## Music

As part of my school band program, I play the French horn in concert settings.
In terms of adjudication, I've done [pretty well](./music/awards.html) &mdash; but I also have the pleasure of participating in my high school's [marching band](https://thefranklinband.org), as well.
As a group, we've done pretty well too.

## Mock legislation

I've been participating in mock legislative conferences for a long time.
Specifically, I have participated in the two sister conferences held by the [YMCA Center for Civic Engagement](http://wp.tennesseecce.org/), Model United Nations and Youth in Government.
The former is, as expected, a simulation of the internal operations of the namesake supranational organization.
Youth in Government is a simulation of the affairs of the State of Tennessee.
Our state's program is particularly unique in that we are able to utilize the actual facilities of the General Assembly during the conference.

Below are the pieces of legislation that I have sponsored, been a member of a sponsoring delegation of, or otherwise played a sizable part of adoption or advancement of said legislation:

- [An Act to Absolve the Property Tax on Solar Energy in Tennessee](./cce/yig04)
- [An Act to Remediate Location-based Healthcare Access Inequities](./cce/yig03)
- [A Resolution to Regulate the Maintenance and Caretaking of Water Bearing Structures Worldwide](./cce/mun04)
- [An Act to Prevent Manufacturer Imposed Software Installation Restrictions on Consumer Phones and other Cellular Devices](./cce/yig02)
- [A Resolution to Ensure Universal and Equitable Access to Safely Managed Water and Sanitation Services for All](./cce/mun03)
- [An Act to Dispose Microplastics from the Tennessee River](./cce/yig01)
- [A Resolution to Address the Worsening Education Crisis Faced by Nations in the Aftermath of Civil Wars and Coups d'État](./cce/mun02)
- [A Resolution to Reform the Democratic and Military Framework of Nations Afflicted by Military Coups D'état](./cce/mun01)

## Other things of interest

- [Vaultwarden instance](https://bitwarden.beepboop.systems)
- [Franklin High School YMCA CCE delegation website](https://franklincce.beepboop.systems)
- [beepboop.systems' marching exhibits](https://marching.beepboop.systems)
- [beepboop.systems' privacy policy and legal notices](./legal)
