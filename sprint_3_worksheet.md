# Sprint 3 Worksheet

## Load Testing

## Security Analysis
1. **Security Analysis Choice**
For our security analysis tool we used SonarQube. Their free tier comes with Sonar Cloud, which is essentially a web app with that includes all the functionality we needed.
SonarQuebe Cloud allows you to log in with GitHub which is very convenient, as it gives you the option to import your organization along with all the repos diretly into Sonar. For The WebUI, and Db Layer, everything worked perfectly and seamlesly. All changes in the main branch are automatically analyzed in Sonar. For mobile, we had to add a workflow file and a config file, but after that everything integrated with no problems.
Our Logic layer, though, gave us some trouble. When it was auto-imported into Sonar, it said the main branch had no code, even though you could explore the branch on Sonar and see that it does indeed have code.After trying a few things, we learned that the problem was that we had 4 C# proejcts in that repo: Logic, DbAccessor, and their respective unit test porjects. What we had to do was run the analysis manually using the command line. The good thing is Sonar gave us the instructions on how to do it.
2. **5 Problems In Our Code**
   

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



