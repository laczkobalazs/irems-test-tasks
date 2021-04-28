#!/bin/bash

# absolute path
path_to_directory="$1"

# size limit in KiB, like 300K, it has to ba positive int
size_limit="$2"

find $path_to_directory -type d -size +$size_limit
