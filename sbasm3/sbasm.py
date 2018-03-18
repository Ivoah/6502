#!/usr/bin/python3

# Author : San Bergmans
# Source : www.sbprojects.net

# Global variables CamelCase_And_Unscored
# My functions CamelCaseWithoutUnderscore
# Local variables lowercase

import sys, os
sys.path.insert(0, os.path.join(sys.path[0], 'sbapack'))
import  assem

# All work is done inside the package!

assem.RunSbassembler()

# You can pre-compile the entire package
# with the sbapack/precompile.sh script
# if you like.
