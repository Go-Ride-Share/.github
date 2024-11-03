September 9 (11:30 AM - 12:30 PM)
- Meeting goal: Deciding on the app idea
- Result: Brainstormed ideas, did not decide on one
- Potential Ideas:
  - Collaborative whiteboard where groups of people can make changes to a whiteboard at the same time. Useful for meetings/brainstorming
  - Flashcards app where you can see other people’s decks as well. Can have leaderboards for popular decks (like social-media-esque). Kind of like Quizlet/Anki but more social-media-esque.
  - Wedding Date picker: We take a database of historical weather/climate data from the gov. and we determine what the chance of rain/sun/clouds is for any different day in the year based on the last 20 years of data. I.e. there is a 35%chance of rain on July 8th.
  - Then you allow users to search the calendar like so: (I want no rain, at least 21 degrees and it has to be a weekend) and you return the results.
  - Then you have a separate database of fake venues, so when you click on a date it'll tell you which venues are free/busy.
  - You could add something like moon cycle phase for superstitious people, there are tons of options for searching the data
  - If we want, let users book days at a venue where no two users can have the same date
  - Running app where there’s a large map and you can (gps tracking) see all the other runners as well.
  - Gym app with social features. You can add friends through invite links/barcodes
  - A streaming service  that puts all movie/show options from all your streaming subscriptions on the same ui. we don’t actually do any streaming, just helps you find what to watch from different services. 

September 10 (8:30 PM - 10PM)
- Meeting goal: To decide on an app idea
- Result: Decided on making a community library app where users can post books of theirs that they want to lend out to others (also considered an idea where we have a city map and users can post locations of useful things like free wifi, charging ports, good parking spots, etc.)
- ![image](/meeting_minutes_images/sep_10_meeting.png)

September 14 (4PM - 5PM)
- Meeting goal: Start working on presentation for Sprint 0
- Results: Unanimously agreed on doing a ridesharing app rather than a community library. Read over the requirements of the presentation and started a shared PowerPoint file (to be filled in on our whenever we have the time).

September 17 (7PM - 7:45PM)
- Meeting goal: Finish up everything for Sprint 0
- Results: Added mocks of the mobile app to the presentation and finished it up. 
- Decided on a tech stack. 
- Made a Github project for the application. 
- Made a list of features and user stories to add.
- Worked on finishing up Sprint 0 hand-in file. 

September 20 (1PM - 1:15PM)
- Small mini-meeting to flesh out how we plan to organize our branches (dev branches off our main branch with feature branches off our dev branches). Made a diagram in LucidChart to reflect this. 
- ![image](/meeting_minutes_images/sep_20_meeting.png)

September 24 (5PM - 6:45PM)
- Designed the User Authentication flow and fleshed out Object and Database design in LucidChart.
- ![image](/meeting_minutes_images/sep_24_meeting.png)
- Went over a newsletter on how Uber finds nearby drivers to see if it applies to what we are trying to do (implementing a feature which lists all nearby trips that users can rideshare with). Decided that it probably doesn’t and we’ll revisit this later. 
  - (https://newsletter.systemdesign.one/p/how-does-uber-find-nearby-drivers)
- Decided what features to do in Sprint 1 (Creating/Editing posts and user profiles)
- Got started on getting the (MySQL) database up and running

September 26 (3PM - 4PM)
- Meeting goal: Get as much of the application up and running so that we can get started on actually implementing features. 
- Initialized and got started on the web-client, as well as the logic-layer (and API endpoints). 
- Made the skeleton for Flutter mobile application. 
- Got started on UI for login and signup pages in the web-client React app. 

September 27 (3:30PM - 4:30PM)
- Went over the colors and fonts that we used in the mockup
- ![image](/meeting_minutes_images/sep_27_meeting.png)
- Continued working on getting the database up and running and Azure working as we like.

October 1
- NO MEETING but decided (via Telegram messages) on what we want to get done and (preferably) when.
- For Saturday at 3pm: Complete the web app UI and mobile UI for login/sign up, and have functional backend API for login/signup.
- For Saturday Midnight: Both UIs are connected to the Backend and work correctly.
- For Sunday midnight: Sign in and Sign UP are 100% complete with Database, both UIs and Testing finished
- Plan to work on user posts and user profiles throughout next wee. 

October 5 (6PM - 7:30PM)
- Meeting goal: do some group work on the project and be able to easily communicate/chat while working (and occasionally pair program). 
- Created tables in the database and updated logic layer to reflect the changes. 
- Made progress on both the mobile frontend and the React web-client frontend. 
- Reworked the User Authentication flow to account for passing tokens from the frontends to the logic tier. 

October 6 (7PM - 10PM)
- Meeting goal: Do group-wide pair programming and discuss issues/progress as we go along. 
- Finished up the feature for creating/editing posts on the Flutter frontend and demo to the group. 
- Got the API working locally and made plans for connecting it tomorrow. 

October 8 (3PM - 4PM)
- Meeting goal: Look over what we have done so far and what we need to get done by Wednesday and Friday. 
- Most of our individual components are working, behind on connecting them to each other. 
- Front-ends need some modification to work correctly with logic layer (and vice versa). 
- Also tried to (collectively) try to get API requests working via Postman (made some progress). 
- Another meeting (5PM - 12AM):
  - Chatting and discussing the project while working on our own work, occasionally bringing up issues (and resolving them via screen sharing and talking it out with the group)

October 10 (6:30 PM - 7PM)
- Meeting goal: Discussing what needs to be finished for tomorrow (Friday October 11)
- Organized our meeting with the TA and discussed our availability. 
- Cleaned up meeting minutes and worksheet for Sprint 1

October 13 (2 PM - 3 PM)
- Meeting goal: General discussion regarding Sprint 2 and how Sprint 1 went
- Discussed work distribution for Sprint 2 and agreed on ticket contents
- Confirmed deadlines and evaluated Sprint 1 (decided on having tickets on a single .github repo rather than duplicates over multiple repos)
- Discussed MongoDB and how it can be integrated into our app

October 15 (7 PM - 8PM)
- Meeting goal: Discuss and flesh out API for chatting feature
- Decided on the contents of different API calls/responses for ease when working across different frontend/backend repos
- Discussed which API endpoints we’d need. 

October 20 (6 PM - 7 PM)
- Meeting goal: Checking up on progress being made
- Divided up remaining work for refactoring/testing, and polishing the logic layer
- Divided up work regarding acceptance/end to end/system tests
- Discussed containerization with Docker, specifically evaluating how long it would it take

October 26 (6 PM - 7 PM)
- Meeting goals: Open forum to discuss any questions any group members have
- Went over dummy endpoints created in the logic layer
- Discussed database tokens and how they are handled
- Decided that questions about the API can be freely accessed in the ‘general’ channel on Discord

October 31 (11 AM - 12 PM)
- Meeting goals: In-person collaborative working in the Engineering Library at the University of Manitoba
- Discussed how dates are being parsed in ISO8601 format in the mobile front-end and how it could clash with the logic layer. Discussed that MongoDB is storing date in a DateTime format. 

November 1 (5:30 PM - 6:30 PM)
- Meeting goals: Divide up remaining work for Sprint 2 and preliminary work for Sprint 3
- Divied up work regarding the worksheet for Sprint 2, as well as the CI/CD pipeline. 
- Discussed how the architecture diagrams have changed over Sprint 2.
