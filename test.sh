#!/bin/bash

user_cookie_header="Cookie: IS_USER=;"
not_user_cookie_header="Cookie: OTHER_COOKIE=;"
not_user_cookie_header_with_value="Cookie: OTHER_COOKIE=some_value;"

cookie_cases=(
  "Cookie: IS_USER=;"
  "Cookie: OTHER_COOKIE=;"
  "Cookie: OTHER_COOKIE=some_value;"
)

for cookie in "${cookie_cases[@]}"
do
  printf "Testing with $cookie\n"
  curl -H "$cookie" "localhost/check-user"
  printf "\n\n"
done