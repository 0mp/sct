# NAME

**sct** - screen temperature control

# SYNOPSIS

**sct**
\[*temperature*]

# DESCRIPTION

This utility can be used to change the screen temperature.

A valid
*temperature*
value is between 1000 and 10000.
If the
*temperature*
argument is not provided or its value is invalid
then the screen temperature is set to the default value of 6500.

# EXAMPLES

Campfire:

	sct 4500

Dust storm on Mars:

	sct 2000

Coffee-free all nighter:

	sct 8000

# DIAGNOSTICS

**Failed to get screen resources**  
Usually those messages mean that
**sct**
cannot connect to the
X(7)
server.

**Failed to open X display %s**  
See
**Failed to get screen resources**.

# SEE ALSO

redshift(1),
xrandr(1)

The original blog post about
**sct**
by Ted Unangst:
[https://www.tedunangst.com/flak/post/sct-set-color-temperature](https://www.tedunangst.com/flak/post/sct-set-color-temperature)

# HISTORY

The
**sct**
utility was written by
Ted Unangst &lt;[tedu@OpenBSD.org](mailto:tedu@OpenBSD.org)&gt;.

# AUTHORS

This
manual page was written by
Mateusz Piotrowski &lt;[0mp@FreeBSD.org](mailto:0mp@FreeBSD.org)&gt;.
