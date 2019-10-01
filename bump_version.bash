#!/bin/bash

# Sets the version number for mkdssp

echo -e "#ifndef version_h\n#define version_h\n\n#define XSSP_VERSION \"$1\"\n\n#endif" > $(dirname $0)/src/version.h
