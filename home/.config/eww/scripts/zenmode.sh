#!/usr/bin/env bash
zenstate="$(eww get zen)"
if [ "$zenstate" == false ]; then
  eww update zenmsg=""
  eww update zen=true
  echo "zen mode on"
elif [ "$zenstate" == true ]; then
  eww update zen=false
  echo "zen mode off"
  sleep 0.5
  eww update zenmsg=""
else
  echo "[ERROR] couldn't find ewwbar"
fi
