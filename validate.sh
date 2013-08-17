#!/bin/bash
# This script validates the rendered page.  It does so by calling various
# validation scripts from ./scripts/.  If a script finds an aspect of the
# rendered pages to not be valid, it will print a meaningful error and exit.

echo "Validating JSON"
./scripts/validate_json.sh

echo "Pages validated"
