#!/bin/bash

uv init --python 3.12
rm -f hello.py
rm -f README.md

uv add 'fastapi[standard]'
uv add gunicorn
uv add sh

