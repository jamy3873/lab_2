#!/bin/bash
# Author: Jared Myers
# Date: 2/1/19

#Problem 1:
echo "Enter RegEx: "
read regex
echo "Enter File Name: "
read filename

echo "Count Phone Numbers: "
grep -E -c "[0-9]{3}-[0-9]{3}-[0-9]{4}$" regex_practice.txt
echo "Count Email Addresses: "
grep -E -c "\w+@\w+\.com$" regex_practice.txt

echo "Creating Result Files..."
grep -E "^303-[0-9]{3}-[0-9]{4}$" regex_practice.txt > phone_results.txt
grep -E "@geocities.com$" regex_practice.txt > email_results.txt
grep -E "$1" regex_practice.txt > command_results.txt
