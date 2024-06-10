=============================
Computers and other potpourri
=============================

`Click here to go back to the beepboop.systems' main page. </>`_

I've been interacting with computers a long time.
I first discovered `Linux <https://en.wikipedia.org/wiki/Linux>`_ in the fifth grade.
Occasionally, I had dabbled in programming before, but my first Linux installation really kicked off programming as a means to build *useful* things.

My most expertise is in `Python <https://python.org>`_ and the related ecosystem.
Similarly, I'm somewhat proficient in `Nix <https://en.wikipedia.org/wiki/Nix_(package_manager)#Implementation>`_, as a result of daily driving `NixOS <https://nixos.org>`_ as my Linux distro of choice.

I sometimes write `articles <articles/>`_, but I also have many open-source projects. Below are some of them, in no particular order.

----

.. container:: hero-image-l

  .. figure:: ./demo.png
    :alt: A picture of contents of the display of x230t, a desktop which uses the dot_testing setup.

``dot_testing``
***************

This is my oldest and most continuous project. ``dot_testing`` is the repository containing the configuration for various machines.
As I adapted NixOS, it also morphed into become my repository of Nix configurations.

It also contains lots of tiny little helper utilities I've wrote and a full-blown statusbar program.

This project is on the `git.beepboop.systems gitea <https://git.beepboop.systems/stupidcomputer/dot_testing>`_ and `Github <https://github.com/stupidcomputer/dot_testing>`_.
The majority of content within is licensed under the `GPL <https://www.gnu.org/licenses/gpl-3.0.en.html>`_, with some parts licensed under the `MIT license <https://opensource.org/license/mit>`_ and other parts with unknown licensing status.
(See `here <https://github.com/stupidcomputer/dot_testing?tab=readme-ov-file#license>`_ for more details.)

.. container:: hero-spacer

.. container:: hero-image-r

  .. figure:: ./yig.png
    :alt: A picture of the cover of the 71st annual Youth in Government Volunteer conference handbook.

``yig``
*******

Over the course of mock legislative conferences, such as the Tennessee YMCA CCE's Model United Nations and Youth in Government, there's a manual released for every conference.
What interesting conclusions can we make based on an automated analysis of the bill texts and metadata?
Can we train a model to determine who's going to make it to the Governor's desk?
What bills will escape committee?
How exactly does one get to the plenary session?
What legislative activity has the Democratic People's Republic of Korea sponsored?

It is these kinds of questions ``yig``, a suite of software for building legislation databases, is designed to answer.
``yig`` is a parser for YIG/CCE manuals (provided in PDF) and a database/web frontend for the data parsed.

This project is under development at the `git.beepboop.systems gitea <https://git.beepboop.systems/stupidcomputer/yig>`_ and `Github <https://github.com/stupidcomputer/yig>`_.
For more information on CCE events, see this website's section on `mock legislation </cce>`_.
Licensed under the GPL.

.. container:: hero-spacer

.. container:: hero-image-l

  .. figure:: ./desmos.png
    :alt: A picture of a DesmosDSL graph definition opened in the Neovim text editor.

``desmos-computer``
*******************

We know that `Desmos <https://desmos.com>`_ is `Turing complete <https://en.wikipedia.org/wiki/Turing_completeness>`_, but can it run Doom?

In all seriousness, ``desmos-computer`` is a project that implements an `instruction set archiecture <https://en.wikipedia.org/wiki/Instruction_set_architecture>`_ within Desmos via `Actions <https://help.desmos.com/hc/en-us/articles/4407725009165-Actions>`_ -- a built-in calculator feature.
It also defines a `DSL <https://en.wikipedia.org/wiki/Domain-specific_language>`_ for specifying the contents of Desmos graphs.
Eventually, an assembler will compile another assembly DSL to a series of DesmosDSL expressions.

It's all terribly complicated.

This project is under development at the `git.beepboop.systems gitea <https://git.beepboop.systems/stupidcomputer/desmos-computer>`_ and `Github <https://github.com/stupidcomputer/desmos-computer>`_.
Licensed under the GPL.

.. container:: hero-spacer

.. container:: hero-image-r

  .. figure:: ./irc.png
    :alt: A picture of an IRC session on libera.chat via the Weechat client.


Various IRC bots
****************

For a time, I was a regular user of `IRC <https://en.wikipedia.org/wiki/Internet_relay_chat>`_ on the `tilde.chat <https://tilde.chat>`_ network.
I've sort of stopped using IRC, mostly because `Bitlbee <https://bitlbee.org>`_'s last version release `was in 2019 <https://www.bitlbee.org/main.php/changelog.html>`_. (!)

Anyway, some of these IRC robots were written as protector bots for the now defunct ``#chaos`` channel.
(In ``#chaos``, everyone gets ``+o`` automatically.)

In chronological order:

- `chaosbot <https://git.beepboop.systems/stupidcomputer/chaosbot>`_, a terrible IRC robot written in C. It was originally based on stolen code from suckless' ``ii`` IRC client. Licensed MIT.
- `pychaos <https://git.beepboop.systems/stupidcomputer/pychaos>`_, a (less) terrible IRC robot written in Python with the `ircrobots` library. Not a very good bot, though. Licensed MIT.
- `coinminer <https://git.beepboop.systems/stupidcomputer/coinminer>`_, a silly IRC robot that exploited an imaginary casino with imaginary money for zillions of tildecoins. Licensed AGPL.
- `universalducks <https://git.beepboop.systems/stupidcomputer/universalducks>`_, another silly IRC robot that provides cross channel, universal ducks. Licensed AGPL.
- `modbot <https://git.beepboop.systems/stupidcomputer/modbot>`_, a crappy attempt at a modular IRC bot. Licensed AGPL.

Other projects
**************

There's a complete listing of all my projects at `my gitea <https://git.beepboop.systems/stupidcomputer>`_.
Do note that the vast majority of them are unfinished and will probably never be finished.

I also had an older website -- an archive of that is available `here </old_website>`_.
