# Go Ride Share

## How to run locally (Development)
#### React Front End
- `npm start`  (Starts on Port 7070)
- In `.env` add:
```
REACT_APP_API_AUTH_URL=http://localhost:7071/api
REACT_APP_API_BASE_URL=http://localhost:7072/api
```
#### Logic Layer (AccountManager)
- `cd .\AccountManager\` then `Func Start -p 7071`
- In `.env` add:
```
"BASE_API_URL": "http://localhost:7073"
```
- Set all Azure Secrets in `.env` for Auth (See Discord)
#### Logic Layer (Logic)
- `cd .\AccountManager\` then `Func Start -p 7072`
- In `.env` add:
```
"BASE_API_URL": "http://localhost:7073"
```
#### DB Layer
- `cd .\DbAccessor\` then `Func Start -p 7073`
