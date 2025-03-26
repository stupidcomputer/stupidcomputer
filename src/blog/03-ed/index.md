# Why does CodeHS disable copy-paste?

I'm taking AP Computer Science A at the moment, and our district uses this learning platform called CodeHS to teach Computer Science classes.
This is fine, except when said platforms implement stupid roadblocks that impede students getting their work done faster.
For example, CodeHS has decided that disabling copy-paste, a function that has been around since 1969 at least, is an extremely wise pedagogical choice.

The most infuriating thing is that sometimes, the *assignments themselves require copy-paste*!
Observe the following:

```
import java.util.Scanner;

public class Mastermind
{
    public static void main(String[] args)
    {
        // Add your code here
    }

    // Copy over methods from the previous exercises
}
```

Mind you, I had to type that snippet manually because I couldn't copy it out of the editor.

The assignment in question entails copying code from *four previous assignments*, but the problem is that copy-paste is disabled.
This 'programming assignment' is now a typing test.

Now the funny part:

```
arist:~$ nix-shell -p ed
nix:arist:~$ ed
a
<some code here>
.
,p
<some code here>
1t$
,p
<some code here>
<some code here>
Q
nix:arist:~$
```

Above is an editing session from a text editor, `ed`, that was first released August 1969.
The current year is 2025.
Subtraction yields a fifty-six year difference.

In summary: a full-screen editor is beaten by a piece of software meant to be used on a teletypewriter.
