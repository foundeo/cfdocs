# generateGraphQLModels

This generates models for all queries, mutations, and subscriptions. Call this method every time if there is a change in the query or you've added a new query in the GraphQL file.

```javascript
generateGraphQLModels()
```

```javascript
returns void
```

## Generate GraphQL models (Script syntax)

Creates a GraphQL client with specified properties and calls generateGraphQLModels

```javascript
gqlClient = getGraphQLClient({
    service_url: "https://apollo-fullstack-tutorial.herokuapp.com/graphql",
    root_folder: "root",
    headers: { keys: "key", values: "value" }
}); 
generateGraphQLModels();
```
