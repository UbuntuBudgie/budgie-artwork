#!/usr/bin/env bash
git clone https://github.com/vinceliuice/qogir-icon-theme

rm -rf src/16/panel/*
rm -rf src/22/panel/*
rm -rf src/24/panel/*
rm -rf src/symbolic/*
rm -rf links/16/panel/*
rm -rf links/22/panel/*
rm -rf links/24/panel/*

cp -r qogir-icon-theme/src/16/panel/* src/16/panel/
cp -r qogir-icon-theme/src/22/panel/* src/22/panel/
cp -r qogir-icon-theme/src/24/panel/* src/24/panel/
cp -r qogir-icon-theme/src/symbolic/* src/symbolic/
cp -r qogir-icon-theme/links/16/panel/* links/16/panel/
cp -r qogir-icon-theme/links/22/panel/* links/22/panel/
cp -r qogir-icon-theme/links/24/panel/* links/24/panel/

rm -rf qogir-icon-theme
