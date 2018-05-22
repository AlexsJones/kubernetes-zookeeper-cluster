#! /bin/bash
#################################################################################
#     File Name           :     build_environment.sh
#     Created By          :     jonesax
#     Creation Date       :     [2017-09-26 21:26]
#     Last Modified       :     [2017-09-27 13:53]
#     Description         :
#################################################################################

echo "Building for environment $1"

rm -rf deployment || true


vortex --template templates--output deployment -varpath ./environments/$1.yaml
