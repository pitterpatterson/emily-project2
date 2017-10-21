curl --include --request PATCH "localhost:4741/gifts/${ID}" \
--header "Content-Type: application/json" \
--header "Authorization: Token token=$TOKEN" \
--data '{
"gift": {
  "price": "'"${PRICE}"'"
}
}'
