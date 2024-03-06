#/bin/bash
set -e

# test if cLab version is correct
if [ -z "$(containerlab version | grep 'version: 0.51.3')" ]; then exit 1; fi
