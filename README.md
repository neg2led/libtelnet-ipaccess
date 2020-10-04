
# ipaccess-libtelnet 

This is a fork of the [osmocom libtelnet fork](http://git.osmocom.org/libtelnet/) used to talk to ip.access NanoBTS devices' DMI debug console.

See [this page on the Osmocom wiki](https://osmocom.org/projects/openbsc/wiki/NanoBTS) for more info.

---

Of note: this doesn't appear to work with my pair of NanoBTS 165G models.

`ipaccess-auth.c` expects a challenge that's wrapped with `<>` characters, like this:

```<xxxxxxxxxxxxxxxx>```

But the challenge my units provide is wrapped in braces `{}` like this:

`{xxxxxxxxxxxxxxxx}`

I assume this is because the authentication mechanism in the firmware changed somewhere along the way; the braces might indicate a different algorithm is used, or possibly just a different key? not sure, and I don't have a live commercial installation I can sniff packets on :(
