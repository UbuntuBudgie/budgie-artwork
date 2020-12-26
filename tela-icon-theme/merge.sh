#!/usr/bin/env bash
git clone https://github.com/vinceliuice/qogir-icon-theme

rm -rf src/16/panel/*
rm -rf src/22/panel/*
rm -rf src/24/panel/*
rm -rf src/symbolic/*

cp -r qogir-icon-theme/src/16/panel/* src/16/panel/
cp -r qogir-icon-theme/src/22/panel/* src/22/panel/
cp -r qogir-icon-theme/src/24/panel/* src/24/panel/
cp -r qogir-icon-theme/src/symbolic/* src/symbolic/

rm -rf qogir-icon-theme
