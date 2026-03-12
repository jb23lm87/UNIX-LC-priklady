#!/bin/bash
# Script to demonstrate various regular expressions using grep and sed
# Basic string matching
# egrep is deprecated; using grep -E instead 
echo "Hello, world" | grep -E "Hello"
echo "Hello, world" | grep -i -E "HELLO"
#
echo "ako Ako dko" | grep -E "\<A"
echo "ako Ako dko" | grep -E "ko\>"
echo "ako Ako dko" | grep -E ".k"
#
echo "How are you?" | grep -E "[oyu]"
echo "How are you?" | grep -E "[aH]."
echo "How are you?" | grep -E "[o][wu]"

echo "abcde01234567" | grep -E "[c-k2-6]"
echo "abcde01234567" | grep -E "[^c-k2-6]"

echo "aabc abc bc" | grep -E "a*b"
echo "aabc abc bc" | grep -E "a+b"
echo "aabc abc bc" | grep -E "a?b"

echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep -E "(on|ues|rida)"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep -E "(Mon|Tues|Fri)"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep -E "..(i|es|n)"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep -E "...(i|es|n)day"
echo "Monday, Tuesday, Wednesday, Thursday, Friday, Saturday, Sunday" | grep -E " ..(i|es|n)day"

echo "Regular expressions" | grep -E "s{2}"
echo "Regular expressions" | grep -E "[esr]{1,3}"
echo "Regular expressions" | grep -E "[r-s]{1,}"

echo "12:34" | sed -E 's/([0-9]{2})\:([0-9]{2})/It is \1 hours and \2 minutes/'

egrep -i "\<an" osoby.txt
