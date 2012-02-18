import signal, subprocess32, sys
# On Linux this causes os.waitpid to fail with OSError as the OS has already
# reaped our child process.  The wait() passing the OSError on to the caller
# and causing us to exit with an error is what we are testing against.
sig_child = getattr(signal, 'SIGCLD', None)
if sig_child is None:
    sig_child = getattr(signal, 'SIGCHLD')
signal.signal(sig_child, signal.SIG_IGN)
subprocess32.Popen([sys.executable, '-c', 'print("albatross")']).wait()
