#!/bin/sh
exec bash --rcfile <(echo '. ~/.bashrc; yazi')
