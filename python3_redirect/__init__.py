"""When installed as subprocess32, this sets up a redirect to subprocess."""

import subprocess
import sys
if sys.version_info[:2] < (3,3):
    raise ImportError('Ancient Python 3 versions are not supported.')
# Doing this could crash some older Python interpreters due to the module
# reference going away before the import is complete?
sys.modules['subprocess32'] = subprocess
