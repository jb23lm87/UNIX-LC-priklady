#!/usr/bin/bash
# Various egrep command examples on sample texts
echo "Hello, world" | grep --colour -E  "Hello"
echo "Hello, world" | grep --colour -E  "HELLO"
echo "Hello, world" | grep --colour -E  "Hello, "
echo "Hello, world" | grep --colour -E  "Hello,  "
echo "ako Ako dko" | grep --colour -E "\<A"
echo "ako Ako dko" | grep --colour -E "ko\>"
echo "ako Ako dko" | grep --colour -E ".k"
echo "How are you?" | grep --colour -E  "[oyu]"
echo "How are you?" | grep --colour -E  "[aH]."
echo "How are you?" | grep --colour -E  "[or][wu]"
echo "abcde01234567" | grep --colour -E  "[c-k2-6]"
echo "abcde01234567" | grep --colour -E  "^[c-k2-6]"
echo "aabc abc bc" | grep --colour -E  "a*b"
echo "aabc abc bc" | grep --colour -E  "a+b"
echo "aabc abc bc" | grep --colour -E  "a?b"
grep --colour -E  "(on|ues|rida)" dni.txt
grep --colour -E  "(Mon|Tues|Fri)day" dni.txt
grep --colour -E  "..(i|es|n)day" dni.txt
grep --colour -E  "...(i|es|n)day" dni.txt

echo "Regular expressions" | grep --colour -E  "s{2}"
echo "Regular expressions" | grep --colour -E  "[esr]{1,3}"
echo "Regular expressions" | grep --colour -E  "[a-z]{3,}"