#!/usr/bin/env bash
# ============================================================
# SaintCon AppSec Lab Quickstart Script
# ------------------------------------------------------------
# Builds the Retype static site used for documentation and
# walkthroughs, located in repos/appsec-community.
#
# Requires: retype (https://retype.com)
# ============================================================

set -e

RETYPE_DIR="$PWD/repos/appsec-community"
OUTPUT_DIR="$RETYPE_DIR/.retype"

echo "=== SaintCon AppSec Lab Quickstart ==="
echo "Checking for Retype CLI..."

if ! command -v retype &> /dev/null; then
  echo "❌ Error: 'retype' not found in PATH."
  echo "   Please install Retype first:"
  echo "     npm install -g retypeapp"
  echo
  echo "After installation, re-run this script."
  exit 1
fi

if [ ! -d "$RETYPE_DIR" ]; then
  echo "❌ Error: Expected directory '$RETYPE_DIR' not found."
  echo "Make sure you’ve cloned or unpacked the full repo structure."
  exit 1
fi

echo "✅ Retype found. Building documentation..."
pushd "$RETYPE_DIR" > /dev/null

retype build

popd > /dev/null

if [ -d "$OUTPUT_DIR" ]; then
  echo "✅ Build complete. Output available at:"
  echo "   $OUTPUT_DIR"
else
  echo "⚠️  Build finished, but output folder not found ($OUTPUT_DIR). Check for errors above."
fi

cd - >/dev/null
echo "=== Done! ==="
