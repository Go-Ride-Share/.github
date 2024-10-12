# Sprint 1 Worksheet

### [Meeting Minutes](https://github.com/Go-Ride-Share/.github/blob/main/meetingMinutes.md)



# Testing Plan

### During Development

- **Unit and Integration Tests**:  
  Developers are responsible for writing and running unit and integration tests for any backend code they implement or modify. Every feature and bug fix must have corresponding automated tests to ensure functionality and prevent regression.

- **End-to-End (E2E) Testing**:  
  For each feature or user story, developers should run local end-to-end tests to verify that the feature works as expected across the system. This involves testing both backend and frontend components.

- **Manual Testing**:  
  Focus on ensuring that new UI elements or user flows function correctly and meet design expectations.

- **Pre-Pull Request (PR) Validation**:  
  Before submitting a PR, all automated tests (unit, integration) must be executed locally by the developer. This ensures that the changes do not break existing functionality and meet the acceptance criteria.

### Continuous Integration (CI) Testing

- **Pre-Merge Checks**:  
  When a PR is submitted, CI pipelines will automatically run all unit and integration tests for both the backend and frontend. The code cannot be merged unless all tests pass.

- **Test Failures**:  
  Any test failures in the CI pipeline must be resolved before the PR can be merged.

### After Merging with Main

- **Post-Merge CI**:  
  After merging into the main branch, CI will automatically run all tests again to ensure stability and detect potential integration issues. The main branch must pass all tests after the merge.

- **Monitoring and Debugging**:  
  After merging, developers should monitor the system for any unexpected behaviors or errors.

### Additional Considerations

- **Performance Testing**:  
  Though not required for every sprint, performance tests should be added for critical components. This includes load testing for backend APIs and stress testing for database interactions.



# UI/Integration/Acceptance Testing

- **Web Frontend**:  
  - We have implemented various tests for our UI components to ensure that user interactions and data display work as expected. The logic layer is handled within the API client where API interactions are processed. 
  - Comprehensive UI tests have been implemented using **React Testing Library** and **Jest**. Each component's rendering and interactions are tested for expected behaviors and error handling.



## Coverage Report

Web Coverage: All major components/pages such as **ApiClient**, **Login**, **SignUp**, **PostsList**, and **UserProfile** are tested thoroughly.

![Web test Covrage Report](/sprint_1_images/WebCoverageReport.png)

## Testing Importance

- **Unit Tests**:
  - **SignUp.test.js**:  
    Tests the functionality and validation of the Signup component on the web front-end, ensuring proper rendering, error handling, form validation, and successful signup behavior.

  - **GetUserTests.cs**:  
    Tests the behavior of the GetUser function, ensuring it correctly handles various request scenarios, including missing headers, successful user retrieval, user not found, and database-related errors.

  - **SavePostTests.cs**:  
    Tests the functionality of the SavePost method, ensuring proper handling of different scenarios such as invalid post data, successful post creation, and database connection issues.

- **Acceptance Tests**:
  - Signing up for the first time on the Web Client
    - Link to Acceptance Test: [View Test](https://github.com/Go-Ride-Share/web-client/issues/29#issuecomment-2408308111)
  
  - Creating a Post on Mobile App
    - Link to Acceptance Test: [View Test](https://github.com/Go-Ride-Share/mobile-client/issues/8#issuecomment-2408302939)
  
  - Creating a Post on Web App
    - Link to Acceptance Test: [View Test](https://github.com/Go-Ride-Share/web-client/issues/25#issuecomment-2408306769)

  
# Reproducible Environments

The documentation was clear enough to run their software locally (dev environment). They provided sample `.env` files for each repository with the required details to be entered, making it simple and easy to follow. The setup was straightforward, needing only a few installations before getting the application up and running. The instructions were well-structured, allowing me to quickly configure the environment without any issues.

We were able to run the unit tests and integration tests successfully. The screenshot provided shows the results of running the test suite, which executed 25 tests for the backend. There were acceptance tests to run for the desktop web app and the mobile web app. We successfully ran the acceptance tests for both desktop and mobile web apps using the instructions provided in the README files.
- ![Screenshot of Tests](/sprint_1_images/reproducible_environments_tests.png)

We did not find any issues while setting up and running Team 2’s project. The distributed system operated smoothly, with all components communicating effectively. There were no connection issues or other problems after running both the backend and frontends. Overall, the documentation was clear enough to run the distributed project and set up the local dev environment.


### Screenshot of Successfully Working App:
![Screenshot of Successfully Working App](/sprint_1_images/reproducible_environments_app.png)

## Additional Information
More information, such as architecture diagrams, sequence diagrams, etc., can be found in our README: [Go-Ride-Share GitHub Repository](https://github.com/Go-Ride-Share).
