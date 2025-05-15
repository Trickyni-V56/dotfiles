#!/usr/bin/env bash
acpi 2>/dev/null | grep -o '[0-9]\+%' || echo 404
