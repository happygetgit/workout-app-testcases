

Task-1 :

Creating homepage feature spec:
==============================

1. create a folder within the spec folder called 'features'
2. Inside the spec /features folder create a file name called 'creating_homepage_spec.rb'

Details of the spec:
====================
when a user visits the home page , user wants to see 4 things:

1. we should see a link called 'Home'
2. we should see a link called 'Atheletes Den'
3. we should see content 'Workout Longue!'
4. we should see content 'Show off your workout'

Call the controller DashboardsController

Task-2:

add guard and cucumber to the project 

Deatils:
========

1. add the below gems in gem file:
        . gem guard
        . gem 'guard-rspec', '~> 4.7.2'
        . gem 'guard-cucumber', '~> 2.1.2'
2. bundle install
3. guard init rspec
4. cucumber --init
4. guard --> this command will enter into the guard if the process done properly

Task-3:

Excercise Management:
=====================

1. User to sign in
2. Upon successful sign in, user can click on a link "My Lounge" to go to an area that shows the details of his/her workouts.
3. User can then click on another link(to be styled as a button).
4. User can fill out a form with the detailsof workout.
5. Alternatively, user can click on a link to go the lounge. 

Excercise Facts:
=================
1. Has a duration in minutes
2. Working details (essentially a description of the activity)
3. Date of the activity
4. Can only exist in the context of a user (excercise must be owned by the user)

Excercise expectations upon creation:
1. The new excercise's user_id has to be same as the logged in user's
2. The current page should be the excercise's show page
 


be prepare on the topic and say with confidence.
10 customer details. 
can u elaborate the question. 
can u explain the 
core knowledge and 




























# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
