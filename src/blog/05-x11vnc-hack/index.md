# A stupid x11vnc hack

At my desk, surface area is at a premium.
Obviously, I have a desktop machine with the obligatory monitor, keyboard, and mouse, but I also have a laptop with its own built-in keyboard and mouse.
It makes no sense to have two keyboards and mice on the same desk.
Additionally, the laptop is somewhat more ergonomic because it has the pointing device within the keyboard (that is, it has a TrackPoint).
Wouldn't it be nice to just have the laptop keyboard and mouse control the desktop?

Prior to having this problem, I knew about Synergy and decided to give it a shot.
This was mostly because Synergy was [in nixpkgs](https://github.com/NixOS/nixpkgs/blob/b4c2c57c31e68544982226d07e4719a2d86302a8/pkgs/applications/misc/synergy/default.nix#L138), so it was just a `nix-shell` away.
I installed on both my laptop and the server, enabled the required ports in the firewall configuration, but faced some issues:

1. Initializing the connection between client and server was temperamental at best. Sometimes I had to restart both the client and server binaries multiple times before they would recognize each other. I'm not sure why that is, as I think the client just pings the entire LAN to find the corresponding server, but I didn't have the energy to figure out why.
2. All keybinds that began with super were not transferred. This is a much bigger problem as both machines run [i3wm](https://i3wm.org/), so I use super bindings constantly.

I tried other solutions, like [barrier](https://github.com/debauchee/barrier), but it too suffered from the same issue of not forwarding super keybinds.

It was at this moment that I remembered [x11vnc](https://github.com/LibVNC/x11vnc) existed, and could potentially do what I needed.
Of course, I'd have to give up the prospect of using more than one computer at a time, but this is fine.
I could just work on the desktop machine exclusively instead.
So, I installed x11vnc on my desktop, opened the VNC ports, and connected my laptop to it with [tigervnc](https://tigervnc.org/).
When you put tigervnc into fullscreen, it captures keybindings using super.
Success!

There is one problem, though.
Your keyboard and mouse inputs go through, but can become bogged down if your display refreshes too much.
Of course, since my laptop is essentially just a dumb terminal for my desktop now, it doesn't really make any sense for it to display anything -- it's just displaying the same thing that my monitor's displaying.
Wouldn't it be nice if there was a way to just forward keyboard and mouse events over vnc, and not send any graphics?

If you spend a little time reading the x11vnc manual page, you will find this:

```
       -nofb

              Ignore video framebuffer: only  process  keyboard  and  pointer.
              Intended for use with Win2VNC and x2vnc dual-monitor setups.
```

This is exactly what I wanted.
Adding -nofb to my x11vnc incantation worked great, and my laptop sends only keyboard and mouse events to the desktop now.

With this little change, x11vnc makes a surprisingly capable remote control for my desktop.
Of course, there are times in which applications seemingly don't pick up input events sent by x11vnc (?) and so I have to switch to a regular keyboard, but those issues have been minimal for the time being.
