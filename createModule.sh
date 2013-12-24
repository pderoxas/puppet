#!/bin/bash

dir="/etc/puppetlabs/puppet/modules/$1"

if [ ! -d "$dir" ]; then
  echo $dir
  mkdir -p "$dir/manifests"
  mkdir -p "$dir/files"
  mkdir -p "$dir/lib"
  mkdir -p "$dir/tests"
  mkdir -p "$dir/templates"
  mkdir -p "$dir/spec"
  touch "$dir/README"
  touch "$dir/manifests/init.pp"
else
  echo "$dir/already exists"
fi
