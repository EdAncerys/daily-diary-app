Diary App Challenge
=================
We are going to write a small Diary App that will allow the users to add diary entry which saves it to the database.

**Domain Model:**

Diary | User 
:--- | :---
 | @username
 | @email  
 | @password 
 | 
#create | #valid_log_in?
#all |
#find | 
#delete | 
#edit | 


**Databases Plan:**

- Table diary:

|  id  |    title   | body | post_time | users_id  |
|:------|:-----------|:-----------|:-----------|:------------
|  1   |  'Diary One'  |  'Diary One body' | 13:25  |     1     
|  2   |  'Diary Two'  |  'Diary Two body' | 17:05  |     1     

- Table Users:

|  id  |    name   |      email      |  password  
|:-----|:----------|:----------------|:-----------
|  1   |  'Frodo'  | 'frodo@eamil.com' | 'password' 



**Views Plan:**
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

## Instructions to set up Database:
- Connect to psql
- Create the database using the psql command `CREATE DATABASE diary;`
- Connect to the database using the pqsl command `\c DATABASE NAME;`
- Run the query we have saved in the file 01_create_diary_table.sql
- Run the query we have saved in the file 02_create_users_table.sql

### create a test environment
- Create the database using the psql command `CREATE DATABASE diary_test;`
- Connect to the database using the pqsl command `\c diary_test;`
- Run the query we have saved in the file 01_create_diary_table.sql
- Run the query we have saved in the file 02_create_users_table.sql


**Features:**

## User Stories/Features

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
