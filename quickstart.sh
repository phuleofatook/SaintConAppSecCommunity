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
echo "Installing Retype CLI..."

sudo npm install -g retypeapp

if [ ! -d "$RETYPE_DIR" ]; then
  echo "❌ Error: Expected directory '$RETYPE_DIR' not found."
  echo "Make sure you’ve cloned or unpacked the full repo structure."
  exit 1
fi

echo "✅ Retype installed. Building documentation..."

cd $RETYPE_DIR
/usr/local/bin/retype build

if [ -d "$OUTPUT_DIR" ]; then
  echo "✅ Build complete. Output available at:"
  echo "   $OUTPUT_DIR"
else
  echo "⚠️  Build finished, but output folder not found ($OUTPUT_DIR). Check for errors above."
fi

cd - >/dev/null

echo "Installing python3-pip"
sudo apt-get update
sudo apt-get install -y python3-pip

echo "Installing semgrep"
pip3 install semgrep

echo "Cloning saintcon-appsec-challenge-2023 repository"
cd
git clone https://github.com/smanesse/saintcon-appsec-challenge-2023.git
echo "=== Done! ==="
