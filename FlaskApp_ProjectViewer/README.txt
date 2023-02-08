FlaskApp_ProjectViewer

Authors: Christopher Aron, Geoffrey Cloud, Nick Finnemore, Kandjoura Drame


This was a group project. Our team worked together and used information that the course offered before the start of the program. A skeleton of the flask_app was a class activity in the course and once we finished a basic app, we were put into groups and we worked together to make this application.

Below is the documentation we had for this project.

Current Features

All the features from the flask notes app we developed in class are in this program. Most of the
code is similar so we only really changed everything to display project instead of note. The html files were changed and it looks different than what else there was in the notes app. The Python code is more or less the same, and it is fair to say that not much work was put into the basic features. Like the saying goes, ‘if it ain’t broke, don’t fix it,’ and there was nothing to change. We added new features as the project asked for, and though we had a few at the start, we changed them.

We added these changes:
- Phone number: when a user registers, they add their phone numbers. This allows for users to contact other users on the pages where other user’s phone numbers are visible.
- All projects: this is a page that shows all the projects people have posted. Similar to social media where you can see the posts other people have posted, this page has a table which shows all the projects that have been made by all the users, along with emails and phone numbers. There are links to view projects from other people.
- View projects: this comes from all projects through a hyperlink reference. Like get project, it shows the information, but since people are coming from other accounts, it gives the email and phone number in case a user wants to contact the project owner.
- Account page: This is where the user goes to view account details. All the user’s details are visible on this page.
- All Users page: This page exists for users to see all the other users that use the project viewer. The details are there for contact or to find out who the users are.

Feature: Login
Rule: User must already have an account
Example:    Good Login with correct credentials
            Given user already has an account
            When the user enters their username and password
            Then the login will be accepted
            And they will be brought to the homepage
Example:    Bad Login with bad credentials
            Given user already has an account
            If the username or password is incorrect
            Then the login will be denied
            And the user will be redirected to the login page


Feature: Registration
Rule: User must not have an account
Example:    Good registration with new username not already existing
            Given user does not have an account
            When the user enters new account’s username And theUsername is accepted
            Then User is brought to the homepage.
Example:    Bad registration with username already existing Given user does not have an account
            If the user enters a an existing username
            Then username will be denied
            And user will be asked to try another username
Example:    Good registration with password having at least one uppercase letter, one lowercase letter and a number. Given user enters a password matching the criteria
            When user enters new account password And the Password matches criteria
            Then User account is made and
Example:    Bad registration with password not matching criteria Given user enters a password that does not match
            If the user enters new password
            And the password does not match criteria Then User account will not be made

Feature: View Projects
Example:    Given a user has logged in
            If the user has any projects or not
            When the user clicks on the view projects link
            Then the user can see a list of projects Feature: Edit project
Example:    User selects project to edit
            Given user clicks an existing project
            And they have access to it
            Then user is able to upload changes


Challenges on this project:
We wanted to make the password requirements more complex, but this was not a clear option because so many errors appeared, and we really needed help from instructor/tas. We decided to forget about this option and we found something else.
We tried to make a change password option and delete account option, but they were also difficult. We reached out to the instructor and tas, but it was after the last day of class, so this wasn’t an option and we dropped these too. The features we did put aren’t as impressive, but they are new features and they should still count for the same grade.


User Guide:
New users should first create an account.

Registration:
They click register in the navigation bar when they access the index page. They should enter their details into the form and then a password which is secure for their purposes, having at least 6 characters. They should take note of the password as there is no reset password feature.

Projects:
Once they are in and logged in, they should click on projects. On that page, they click the add project button. They put whatever information they need to have on the form, and they submit it. Once submitted, projects can be edited or deleted.

All projects:
The user can see other people’s projects by clicking all projects in the navigation bar. They can click on individual projects to view more.

Account:
Users can check their account details by clicking account on the navigation bar.

Login:
Users can login if they aren’t already by clicking login on the navigation bar on the index page.