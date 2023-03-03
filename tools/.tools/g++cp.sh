#!/usr/bin/env sh

g++cp ()
{
  g++ -pedantic-errors -Wall -Weffc++ -Wextra -Wsign-conversion -Werror -std=c++17 -O2 "$1" -o a.out; ./a.out < in.txt | tee out.txt 
}
