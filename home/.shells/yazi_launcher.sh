#!/bin/sh
exec bash --rcfile <(echo '. ~/.bashrc; y')
