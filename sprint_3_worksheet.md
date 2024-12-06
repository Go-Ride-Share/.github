# Sprint 3 Worksheet

## Load Testing

## Security Analysis
1. **Security Analysis Choice**
For our security analysis tool we used SonarQube. Their free tier comes with Sonar Cloud, which is essentially a web app with that includes all the functionality we needed.
SonarQuebe Cloud allows you to log in with GitHub which is very convenient, as it gives you the option to import your organization along with all the repos diretly into Sonar. For The WebUI, and Db Layer, everything worked perfectly and seamlesly. All changes in the main branch are automatically analyzed in Sonar. For mobile, we had to add a workflow file and a config file, but after that everything integrated with no problems.
Our Logic layer, though, gave us some trouble. When it was auto-imported into Sonar, it said the main branch had no code, even though you could explore the branch on Sonar and see that it does indeed have code.After trying a few things, we learned that the problem was that we had 4 C# proejcts in that repo: Logic, DbAccessor, and their respective unit test porjects. What we had to do was run the analysis manually using the command line. The good thing is Sonar gave us the instructions on how to do it.
2. **5 Problems In Our Code**
   SonarQube pointed our 7 security problems in our code. 6 of them where instances of logging user-controlled data, which is calssified as a minor issue. We do this when we print the request body before procesing it. The reason this is an issues is because the user can put anything in the logs, including fake logs. The proposed fix is to santize the request body by replacing '\n' chars with '-'. Then, even if the user attempts to fake the logs, it will be clear since they will all go in one line.
   Another issue brought up is that we are also constructing the URL using user-controlled data in GetPost endpoint. The user passes a user-id as a route parameter, and will retrieve info about that user by passing that user-id to the databse layer as a route parameter as well. The issue is that the maliscious user can pass a URI instead of a user-id, and isntead of accessing the database with `...User/{user_id}`, the logic layer would access it with `User/some/other/endpoint`. This produces uninteded results and given gice the user acces to an endpoint they are not authroized to access.
   To fix this, we url-encoded the user-controlled parameter before appending it to the URL. This replaces all characters that are not safe for URLs with their encoded equivalents. So, User/some/other/endpoint` would become `User/some%2Fother$2Fendpoint`, preventing the user from being able to inject URI paths.
   There were no other security issues found in our code.
3. **Fix**
   The major issues discovered by Sonar was fixed in [this commit](https://github.com/Go-Ride-Share/logic-layer/commit/3c7f820904e9e70e45589776d8dd8f9904375723).


## Continuous Integration and deployment (CI/CD)

We have used GitHub Actions to handle integration and deployment tasks for all of our components: the web client, database layer, account manager, and logic layer. 
We have demonstrated the prod enviornment's CI/CD workflow below. However, we have seperate CI/CD pipeline for the dev environment which works similarly.

### Continuous Integration (CI) Testing Workflow

1. **Pre-Merge Checks**:
   - Upon creating a pull request (PR), the CI pipeline automatically triggers.
   - Unit and integration tests are executed.
   - Merging is blocked unless all tests pass successfully.
   - We must resolve any test failures before merging the PR.

2. **Post-Merge Testing**:
   - Once changes are merged into the main branch, CI runs all tests again.
   - This ensures main branch stability and uncovers potential integration issues.

### Continuous Deployment (CD) Workflow

- **Web Client**:  
  CI/CD pipeline deploys the web client via an Azure Static Web Apps action upon successful changes to the `main` branch.  
  - Link to Web Workflow: [Azure Static Web Apps Workflow](https://github.com/Go-Ride-Share/web-client/blob/main/.github/workflows/azure-static-web-apps-black-rock-0cc860b0f.yml)

- **Database Layer**:  
  Updates to the `DbAccessor` directory trigger the deployment of Azure Functions for database interaction.  
  - Link to DB Workflow: [DbAccessor Workflow](https://github.com/Go-Ride-Share/db-layer/blob/main/.github/workflows/main_grs-dbaccessor.yml)

- **Account Manager**:  
  Changes to the `AccountManager` directory initiate CI/CD for managing user accounts through Azure Functions.  
  - Link to Account Manager Workflow: [AccountManager Workflow](https://github.com/Go-Ride-Share/logic-layer/blob/main/.github/workflows/main_grs-accountmanager.yml)

- **Logic Layer**:  
  Business logic is automatically deployed via Azure Functions when changes are made to the `Logic` repo.  
  - Link to Logic Workflow: [Logic Workflow](https://github.com/Go-Ride-Share/logic-layer/blob/main/.github/workflows/main_grs-logic.yml)

### Snapshots of Execution

- **Web Continuous Integration**:  
  ![Web CI Snapshot](/sprint_3_images/web_ci.png)

- **Web Continuous Deployment**:  
  ![Web CD Snapshot](/sprint_3_images/web_cd.png)


## Thoughts

## Other thoughts

## Appendix

### SonarQube Logs
#### Db Layer Logs
<img width="1440" alt="Screenshot 2024-12-06 at 3 24 01 AM" src="https://github.com/user-attachments/assets/6923ef16-0878-445d-aa49-2c6a058a4bab">
<img width="1440" alt="Screenshot 2024-12-06 at 3 28 26 AM" src="https://github.com/user-attachments/assets/97d5b067-1b2c-4802-b3cd-a1ad85b489a5">
<img width="1438" alt="Screenshot 2024-12-06 at 3 28 44 AM" src="https://github.com/user-attachments/assets/9835eee3-161f-4eaf-a1d2-2695b2b9fb7a">
<img width="1436" alt="Screenshot 2024-12-06 at 3 28 52 AM" src="https://github.com/user-attachments/assets/331e431e-2210-41ca-bd47-620fee0a02a6">
<img width="1440" alt="Screenshot 2024-12-06 at 3 28 59 AM" src="https://github.com/user-attachments/assets/fc8d4f73-2d77-4963-b0ac-c6d622fae1ba">
<img width="1440" alt="Screenshot 2024-12-06 at 11 21 50 AM" src="https://github.com/user-attachments/assets/6ed8c233-f2ec-4146-ab84-af83830ace8f">
<img width="1440" alt="Screenshot 2024-12-06 at 11 21 59 AM" src="https://github.com/user-attachments/assets/9422b1ea-2ffc-4307-89ff-3fa7532b236b">
<img width="1440" alt="Screenshot 2024-12-06 at 11 23 54 AM" src="https://github.com/user-attachments/assets/6590e148-0401-406c-a3d8-e6a65ed06efd">
<img width="1440" alt="Screenshot 2024-12-06 at 11 24 07 AM" src="https://github.com/user-attachments/assets/108b04d4-bbf0-4aa3-89aa-8e64c2e8cb01">
<img width="1440" alt="Screenshot 2024-12-06 at 11 25 51 AM" src="https://github.com/user-attachments/assets/c10c71ee-dcb1-40c2-954c-a116229ea757">
<img width="1440" alt="Screenshot 2024-12-06 at 12 33 27 PM" src="https://github.com/user-attachments/assets/9a8d31a6-6f10-4f32-a646-237dc678ca98">
