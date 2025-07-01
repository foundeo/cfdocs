# getGraphQLClient

Use this method to create the GraphQL client that will communicate with the server that contains the schema. Pass the configuration parameters to get the client.

```javascript
getGraphQLClient(parameterStruct)
```

```javascript
returns any
```

## Argument Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| parameterStruct | struct | Yes |  | A structure defining the properties of the GraphQL client |

## Create a GraphQL client (Script syntax)

Creates a GraphQL client with specified properties

```javascript
gqlClient = getGraphQLClient({
    service_name: "server-name",
    type: "graphqlclient",
    raw_http_client: true,
    service_url: "endpoint-url",
    root_folder: "root_folder",
    headers: { values: "auth-value", keys: "auth-key" },
    batching_configuration: { enabled: true, batch_interval_ms: 10, max_batch_size: 15 },
    subscription_configuration: { websocket_url: "wss://websocket-url", subscription_heartbeat_timeout: 5, subscription_heartbeat_timeunit: "nano" }
});
```
