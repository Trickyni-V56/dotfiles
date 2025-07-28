#!/usr/bin/env bash
acpi 2>/dev/null | grep -q 'Discharging' && echo false || echo true
