#!/bin/bash

echo "Hello, this is an automated text entry on $(date)" >> daily_note.txt && git add daily_note.txt && git commit -m "Auto commit: Added text on $(date '+%Y-%m-%d %H:%M:%S')" && git push origin main

