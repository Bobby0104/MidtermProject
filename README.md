# MidtermProject

# Collaborators, Roles, Github Repositories, & LinkedIn

* Ken Hiveley, Scrum Master: Khiveley, https://www.linkedin.com/in/ken-hiveley
* Yanyan Jiang:                          Yanyan07,  https://www.linkedin.com/in/yanyan-jiang-07a6a9204
* Robert Jones, Github Repository Owner:  Bobby0104, https://www.linkedin.com/in/robert-jones-4323b2a
* Brandon Pope,  Database Administrator:  5G-CO, https://www.linkedin.com/in/bptexas

# Overview

In this project, we created a food pantry project called "Helping Hand." The project allows both a login for providers(pantries) and recipients(those who may need to receive assistance/food from a local pantry) and associated CRUD functions where applicable for both.  

# How to Use
In your browser, please entering the following AWS IP and address:  18.118.127.156:8080/HelpingHand.  On the Home page, options are displayed in the navigation bar for Login as well as Logout.  Clicking Login, for the Username for "Login as Recipient" please use "rlarson" with the password "ralphlarson" and click Login as Recipient. He is one of several recipients in our database.  

Recipient access allows a user to be able to find a pantry close to him/her based on zipcode.  Additional options on the page allow for showing an order history once generated from the pantry as well as returning to home.  Enter a zipcode into the search for finding a pantry.  The site will then provide you with the ability to see the MICA food pantry's inventory which they shared to our site.  Click "Show Inventory" and the items the pantry currently has are displayed.  Selecting "Add to Cart" for any items of interest and then "Items in Cart" will take you to a page to show your order/cart.

From there, if you click "Place Your Order" to schedule the appointment from the pantry for local pickup or if you made a mistake, you can either "Delete" the choice.  If you choose "Return to List" you can select additional items from the list as needed.  

The Appointment page lets you select from a calender for the Date and Time (Local Date Time) and then "Submit Appointment." When the appointment is entered a confirmation form is provided on screen with the date time and the pantry address.  You can then choose to return to the Recipient or Home pages.  The site requires once the recipent has finished to then provide a provider's username and password.

Selecting "Login" from the navigation pane, enter "atate" as the username and "anntate" as the password followed by "Login as Provider."  The Provider access page allows for finding all appointments for the pantry, showing what items at the pantry are currently out of stock,  and refilling inventory for the pantry (under the assumption that the inventory items being provided are staples and are replenished frequently). Each of the respective pages allows for a return to the Provider page or to return Home.  Lastly, Logout from the navigation pane will end the current session.

Thank you for reviewing our project.  We hope you enjoyed it as much as we did creating it!

# Technologies Used

* Spring Boot
* Kanban board (Trello)
* MySQL Workbench
* AWS
* Figma (Wireframes)
* JPQL
* Git Branching
* Agile
* HTML 5
* CSS
* Bootstrap

# Lessons Learned

<p align="center" > Planning </p>

We spent at least a day on planning and developing our project to set the vision for what user stories we would like to contain in the project.  While we were eager to code and complete the project, we knew how critical planning would be to having a good project with a well articulated roadmap to better see how we could then implement agile methodologies and complete our work.  We had to rethink our mappings in between pantry and address and cart to appointment.  This was very early on and allowed us a better strategy in laying out our data structure and database schema.

<p align="center"> Collaboration </p>

Working as a group remotely poses its challenges.  We each come from a variety of backgrounds, circumstances, and skill levels and have had to learn to integrate well as a team.  At times, we expressed creative differences and had to compromise, particularly with brainstorming the project, mapping our database schema, and creating our wireframes.  Communication, we learned, is key to ensuring that efforts aren't duplicated and that conflicts didn't arise with code commits.  When we didn't communicate well, frustration rose and productivity decreased.  An example of this would be when two members of our group were pair programming entity mapping for a list on our Inventory entity and another member had already updated the add and remove methods along with creating protective copies of the corresponding getters and setters. Encountering merge conflicts was also easier to work through when we explicitly knew which files any one member of our group was working in and responsible for.  When code was at a place where it worked successfully, that member working in his/her own branch would commit and push and another member would pull and merge it into our main branch and then from main it would be pulled into every other member's own branch.

<p align="center"> Execution </p>

Within our planning stage, we created a vision for our project.  We focused on two aspects: what we ideally would like our finished site to look like and also a minimum viable product based on our midterm's criteria.  Throughout the project we had daily standup meetings that focused on three questions:

  1.  "What did you accomplish since the last meeting?"
  2.  "What are you working on until the next meeting?"
  3.  "What is getting in your way or keeping you from doing your job?"

These questions along with our kanban board served as a metric to refocus our priorities as we ran into challenges and needed to move developers to help pair program or assist with questions that came up regarding our buildout of the application.  It has been incredibly rewarding to see our kanban checklists get completed and for more facets of our work go from code to application.  Lastly, we have created accountability within the team and hold each otehr to the expectation that "you do what you say you are going to do and own your progress."  As a team, we are more capable than anyone individual and able to realize way more creative potential.
