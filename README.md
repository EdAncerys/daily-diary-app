# Diary App Challenge

[Project Description](#project-description) | [Tech Stack](#tech-stack) | [Installation](#installation) | [Running tests](#running-tests) | [User Stories](#user-stories) | [Database Plan](#database-plan) | [Domain Models](#domain-models) | [Further development](#further-development)

## Project Description

We are going to write a small Diary App that will allow the users to add diary entry which saves it to the database.

## Tech Stack:

- [Capybara](https://github.com/teamcapybara/capybara) Capybara helps you test web applications by simulating how a real user would interact with your app.
- [RSpec](https://rspec.info/) Behaviour Driven.
  Development for Ruby. **TDD**.
- [Sinatra](http://sinatrarb.com/) Sinatra is a DSL for quickly creating web. applications in Ruby with minimal effort.
- [PostgreSQL](https://www.postgresql.org/) Open Source Relational Database
- [Rubocop](https://github.com/rubocop-hq/rubocop) RuboCop is a Ruby static code analyzer (a.k.a. linter) and code formatter.

## Installation

- Clone this repository
  `$ git clone https://github.com/EdAncerys/daily-diary-app`
- Navigate to local repository
  `$ cd daily-diary-app`
- Install bundler if you don't already have it
  `$ gem bundle install`
- Install all dependencies
  `$ bundle install`
- Add/install database structure locally.
- Start the server
  `$ ruby app.rb`
- Navigate to [http://localhost:4567](http://localhost:4567) in your browser

### Instructions to set up Database:

- Connect to psql
- Create the database using the psql command `CREATE DATABASE diary;`
- Connect to the database using the pqsl command `\c DATABASE NAME;`
- Run the query we have saved in the file 01_create_diary_table.sql
- Run the query we have saved in the file 02_create_users_table.sql

### Create a test environment

- Create the database using the psql command `CREATE DATABASE diary_test;`
- Connect to the database using the pqsl command `\c diary_test;`
- Run the query we have saved in the file 01_create_diary_table.sql
- Run the query we have saved in the file 02_create_users_table.sql

## Running tests

- Navigate to local repository
  `$ cd daily-diary-app`
- No need to start the server. In the terminal type the following command:
  `$ rspec`

### Domain Models:

| Diary     | User           |
| :-------- | :------------- |
| @username |
| @email    |
| @password |
| #create   | #valid_log_in? |
| #all      |
| #find     |
| #delete   |
| #edit     |

### Database Plan:

- Diary Table:

| id  | title       | body             | post_time | users_id |
| :-- | :---------- | :--------------- | :-------- | :------- |
| 1   | 'Diary One' | 'Diary One body' | 13:25     | 1        |
| 2   | 'Diary Two' | 'Diary Two body' | 17:05     | 1        |

- User Table:

| id  | name    | email             | password   |
| :-- | :------ | :---------------- | :--------- |
| 1   | 'Frodo' | 'frodo@eamil.com' | 'password' |

### Plan view:

```
get '/diary'            -->  display diary.erb (link to link to log_in - peep list)
get 'diary/sign_up'     --> diaplays sign_up.erb
post 'diary/sign_up'    --> saves data to DB and redirects to 'diary/user'
get 'diary/sign_in'     --> displays sign_in.erb
post 'diary/sign_in'    --> validates data and redirects to 'display/user'
get 'diary/user'        --> displays form to add diary to DB
post 'diary/add_diary'  --> saves diary to DB redirects to 'diary/list'
get 'diary/list'        --> displays all TITLE diaries
get 'diary/list:id'     --> displays diary selected

```

## User Stories

### Must Have

```
As a user
So that I can keep a daily diary
I want to be able to add a new Diary Entry
```

```
As a user
So that I can identify my entry in future
I want to give each Diary Entry a title
```

```
As a user
So that I can browse my previous entries
I want to see a list of Diary Entry Titles
```

```
As a user
So that I can read my previous entries
I want to click on a title to see the full Diary Entry
```

### Should Have

```
As a user
So that I can correct an error
I want to be able to edit the Diary Entry
```

```
As a user
So that I can keep my diary tidy
I want to be able to delete a Diary Entry
```

```
As a user
So that I can reflect on a previous diary entry
I want to be able add a Comment to a Diary Entry
```

```
As a user
So that I can see my past reflections
I want to see associated Comments when viewing a Diary Entry
```

### Could Have

```
As a user
So that I can make entries easier to browse
I want to be able to add Tags to an Entry
```

```
As a user
So that I can see different types of entry
I want to be able to filter Diary Entries by Tag
```

## Further Development

Ideas to improve the application

- Add more complex UI to compliment functionality.
- Add feature share notes via across separate platforms.
- Add feature for user make a note public or private.
- Add the ability for users to like/add notes to own list.
