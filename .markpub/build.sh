#!/bin/bash
set -e  # Exit on error

markpub build -i .. -o ./output --lunr --commits
