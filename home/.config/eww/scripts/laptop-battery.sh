#!/usr/bin/env bash
# acpi 2>/dev/null | grep -o '[0-9]\+%' | tr -d '%' || echo 404


battery=$(acpi 2>/dev/null | grep -o '[0-9]\+%' | tr -d '%')
battery=${battery:-404}
echo $battery


# TODO: add an if condition that adds +1000 if thing is charging
