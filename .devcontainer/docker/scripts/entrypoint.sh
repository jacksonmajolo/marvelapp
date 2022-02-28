#!/bin/bash

flutter clean;

flutter pub get;

flutter pub run build_runner build;

exit
