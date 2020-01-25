#!/bin/sh

read szoveg

echo $szoveg | tr üóőúűéá ÜÓŐÚŰÉÁ | tr a-z A-Z
