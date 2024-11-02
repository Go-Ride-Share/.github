# Sprint 2 Worksheet
### [Meeting Minutes]()

## Regression Testing

## Testing Slowdown

## Not Testing

## Profiler

[Profile Result](https://github.com/Go-Ride-Share/.github/blob/main/profiler_result.md)

The slowest endpoint is GetAllPosts, with an average response time of 576 ms. This endpoint is slow because it retrieves all records from the posts table at once, which can result in large data transfers and slower response times, especially as data grows.

A potential fix is implementing pagination in the query. This would allow the endpoint to retrieve a smaller subset of posts per request, reducing load on the database and improving response time. Implementing pagination will also help maintain performance as the data volume grows.
Profiler Result

## Last Dash

In the final sprint, We foresee the following potential issues:

 - Security Risks with User Tokens and IDs: Currently, the system relies on user IDs and tokens for access control. If a user ID is compromised, it may allow unauthorized access to other users' data. This is a critical security issue, as sensitive information could be accessed without proper authorization. To mitigate this risk, we should consider implementing additional security measures such as token validation to ensure it matches the authenticated user.
 - Another issue is the complexity of the multi-city search feature. When users request routes (e.g., from Winnipeg to Calgary), the current design only stores latitude and longitude coordinates. Running queries based on these geographic points to determine viable routes will be challenging, especially if we need to filter results efficiently for large datasets.

## Show Off

### Muhammad

### Asit

### Ben

### Bilal

### Dhairya

### Eddie
