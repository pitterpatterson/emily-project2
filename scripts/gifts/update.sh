curl --include --request PATCH "localhost:4741/gifts/${ID}" \
--header "Content-Type: application/json" \
--data '{
"gift": {
  "price": "'"${PRICE}"'"
}
}'
