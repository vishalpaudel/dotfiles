#!/usr/bin/env sh

mcd ()
{
  mkdir -p $1;
  cd $1 && return 0;
}
