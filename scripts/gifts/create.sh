curl --include --request POST "localhost:7165/gifts" \
--header "Content-Type: application/json" \
--data '{
"gift": {
  "name": "'"${NAME}"'",
  "category": "'"${CATEGORY}"'",
  "price": "'"${PRICE}"'",
  "where_to_find": "'"${WHERE_TO_FIND}"'",
  "relationship_status": "'"${RELATIONSHIP_STATUS}"'",
}
}'
