# Sprint 1 Worksheet
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

## Show Off

### Muhammad

### Asit

### Ben

### Bilal

### Dhairya

### Eddie
