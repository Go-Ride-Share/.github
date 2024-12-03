# Sprint 3 Worksheet

## Load Testing

## Security Analysis

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
