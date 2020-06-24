#!/bin/bash

# Exit if any of the intermediate steps fail
set -e

# Safely produce a JSON object containing the result value.
# jq will ensure that the value is properly quoted
# and escaped to produce a valid JSON string.
jq -n '{"foobaz":"helloworld"}'
