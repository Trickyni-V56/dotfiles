#!/usr/bin/env bash
acpi 2>/dev/null | grep -o '[0-9]\+%' || echo 404


# TODO: add an if condition that adds +1000 if thing is charging
