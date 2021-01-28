# If this file unused, remove this file.
# Run Hasura GraphQL engine using Docker
docker run -d -p 8080:8080 \
  -e HASURA_GRAPHQL_DATABASE_URL=postgres://user-mindid:pass-mindid@docker.for.win.localhost:5432/mindid \
  -e HASURA_GRAPHQL_ENABLE_CONSOLE=true \
  hasura/graphql-engine:latest