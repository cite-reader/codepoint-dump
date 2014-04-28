# Codepoint-dump

A level below glyphs. A level above `hexdump(1)`.

## What does this do?

Files, as every programmer knows, "are" sequences of bytes, and when debugging
we often use `hexdump` to examine that level directly. Or at least I do.

Similarly, text "is" a sequence of codepoints, and I somewhat often need to
examine that level of things. Hexdump and a rudimentary ability to read UTF8
gets me through, but it obviously isn't ideal.

So I built this.

## Can I use this?

I've slapped a 3-clause BSD license on it, so go nuts.

## Should I use this?

Probably not. It's basically functional at this point, but very rudimentary. I'm
also very much in the phase of the project where I don't care at all about
backwards-compatibility of anything. Caveat emptor.

## How do I use this?

Stuff some text onto standard input:

    $ echo 'This is a test of the codepoint dumping system.' | codepoint-dump 
    54 68 69 73 20 69 73 20 61 20 74 65 73 74 20 6f 66 20 74 68 65 20 63 6f 64 65 70 6f 69 6e 74 20 64 75 6d 70 69 6e 67 20 73 79 73 74 65 6d 2e a

Right now, everything comes out on one line. That's what `fold` is for:

    $ echo 'This is slightly inconvenient.' | codepoint-dump | fold -s
    54 68 69 73 20 69 73 20 73 6c 69 67 68 74 6c 79 20 69 6e 63 6f 6e 76 65 6e 69 
    65 6e 74 a
