This is a backport of the Python 3 subprocess module for use on Python
versions 2.4 through 2.7.

It includes many important reliability bug fixes relevant on POSIX
platforms including a C extension module used internally to handle the
code path between fork() and exec().  This module is reliable when an
application is using threads.

Refer to the Python 3.3 documentation for usage information:
 https://docs.python.org/3.3/library/subprocess.html

Timeout support backported from Python 3.3 is included.
Otherwise assume that the features are frozen at 3.2.

Bugs?  Try to reproduce them on the latest Python 3.x itself and file bug
reports on http://bugs.python.org/.  Add gregory.p.smith to the Nosy list.

If you have reason to believe the issue is specifically with this backport
and not a problem in Python 3 itself, use the github issue tracker.

-- Gregory P. Smith  greg@krypto.org
