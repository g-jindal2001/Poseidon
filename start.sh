#!/usr/bin/env bash

# shellcheck disable=SC1091

[[ -d "venv" ]] || python3.8 -m venv ./venv
source venv/bin/activate
pip install -r requirements.txt
gunicorn api:app -b :5501 --workers=$(nproc)
