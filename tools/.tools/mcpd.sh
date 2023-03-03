#!/usr/bin/env sh

mcpd ()
{
  mkdir -p $1;
  cd $1;
  touch in.txt;
  touch out.txt;
  touch expectedout.txt;

  touch "$1.cpp"
}
