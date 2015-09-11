### Requirements necessary to Meet Expectations

Design a schema and create the necessary migrations and models to represent team members working on a project:

#### Users

* Users must have an email and a password.
* Users can optionally have a first and last name.
* Users can belong to multiple projects.

#### Projects

* A project must have a name.
* A project can optionally have a description.
* A project can have many users assigned to it.

### Tips

* You should feel free to add whatever additional migrations/models etc. you need to make these associations work.
* This challenge is focused solely on **migrations**, **models**, and the database **schema**. The relevant files that will be checked are:
  - All files in the `app/models` directory.
  - All files in the `db/migrate` directory.
  - The `db/schema.rb` file.
* Include database constraints and model validations where appropriate.
* Draw out the ER Diagram on paper so that you can understand what data you will need to save and the relationships that you will need to create.
* Test your models in `pry`: `pry -r "./app.rb"`
* You do not need to add any routes to the application to make it functional.
* **DO NOT** start the requirements for exceeding expectations before completing the requirements necessary to meet expectations.

### Requirements necessary to Exceed Expectations

We now want to be able to add tasks to our app.

#### Tasks

* Tasks must have a name.
* Tasks can optionally have a description and a due date.
* Tasks can optionally be assigned to a single user. (Tasks can also remain unassigned.)
* A task must belong to a single project.

#### Projects
* A project has a collection of individual tasks assigned to it.

### Create a Seeder

* This file should be located at `db/seeds.rb`
* It should contain the code to create, at least, two users, one project, and two tasks, all of which are associated.
* Check that it works by running `rake db:seed`.

### Create a `README.md`

* This file should be located at the root of your application.
* It should contain a title and description of the application.
* It should contain the ActiveRecord queries and output of those queries for the following:
  - Retrieve all of the users
  - Pick a user, retrieve all of the tasks assigned to them
  - Pick a project, retrieve all of the tasks associated with that project
  - Pick a task, retrieve the associated project.


