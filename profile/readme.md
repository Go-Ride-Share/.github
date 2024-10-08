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
- `cd .\AccountManager\` then `func start -p 7071`
- Rename `sample.local.settings.json` to `local.settings.json`
- Set `BASE_API_URL` in `local.settings.json` to `http://localhost:7073`
- Set all Azure Secrets in `local.settings.json` for Auth (See Discord)
#### Logic Layer (Logic)
- `cd .\AccountManager\` then `func start -p 7072`
- Rename `sample.local.settings.json` to `local.settings.json`
- Set `BASE_API_URL` in `local.settings.json` to `http://localhost:7073`
#### DB Layer
- `cd .\DbAccessor\` then `func start -p 7073`
