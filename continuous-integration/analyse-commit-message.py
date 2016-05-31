from __future__ import print_function
import sys

package_name = sys.argv[1]
commit_message = sys.argv[2]

sys.exit(int('['+package_name+']' not in commit_message))
