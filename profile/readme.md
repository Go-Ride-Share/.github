# Go Ride Share

## How to run locally (Developer Guide)
#### React Front End
- run `npm install` to install all dependancies
- In `.env` add:
```
REACT_APP_API_AUTH_URL=http://localhost:7071/api
REACT_APP_API_BASE_URL=http://localhost:7072/api
```
- `npm start`  (Starts on Port 7070)
- The website will open in your browser

#### DB Layer
- Modify sample.local.settings.json to be local.settings.json in db-layer/DbAccessor and update the values to the following:
```
"DB_CONNECTION_STRING":
```
-  navigate to `\DbAccessor\` then `func start -p 7073`

#### Logic Layer (AccountManager)
- **NOTE:** You need to install Azure Functions Core Tools v4
   - This can be done on mac using the following brew commands
   - Or on windows using [Azure Tools](https://learn.microsoft.com/en-us/azure/azure-functions/functions-run-local?tabs=windows%2Cisolated-process%2Cnode-v4%2Cpython-v2%2Chttp-trigger%2Ccontainer-apps&pivots=programming-language-csharp#install-the-azure-functions-core-tools:~:text=quickstart%20article.-,Install%20the%20Azure%20Functions%20Core%20Tools,-The%20recommended%20way).
- Rename `sample.local.settings.json` to `local.settings.json` fill in the following values: (Secrets will be provided to you by your dev manager)
```
"BASE_API_URL": "http://localhost:7073"
"OAUTH_CLIENT_SECRET_DB":
"OAUTH_CLIENT_SECRET":
"OAUTH_CLIENT_ID":
"OAUTH_CLIENT_ID_DB":
"OAUTH_TENANT_ID_DB":
"OAUTH_TENANT_ID":
``` 
- navigate to `\AccountManager\` then run `func start -p 7071`

#### Logic Layer (Logic)
```
"BASE_API_URL"="http://localhost:7073"
```
- navigate to  `\AccountManager\` then `func start -p 7072`

#### DB Layer
- Modify sample.local.settings.json to be local.settings.json in db-layer/DbAccessor and update the values to the following:
```
"DB_CONNECTION_STRING":
```
-  navigate to `\DbAccessor\` then `func start -p 7073`

#### Flutter Front End (Android Mobile App)
- Download: [Android Studio](https://developer.android.com/studio)
   - Create a new project will all of the default settings
   - In device manager, click "Play" to start an emulator (tip: if this doesn’t work, try cold booting)
- Install Flutter 
   - Tip for mac with Homebrew, Run: `brew install --cask flutter`
- In your terminal/command prompt, navigate to mobile-client and run ‘flutter run’

```
REACT_APP_API_AUTH_URL=http://localhost:7071/api
REACT_APP_API_BASE_URL=http://localhost:7072/api
```