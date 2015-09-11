/// RETRIEVE ALL USERS///
//////
  [2] pry(main)> User.all
  D, [2015-09-11T11:31:13.168282 #6566] DEBUG -- :   User Load (0.7ms)  SELECT "users".* FROM "users"
  => [#<User:0x007fc8bb27b628
  id: 1,
  email: "abi@aby.com",
  password: "1234",
  first_name: "Abi",
  last_name: "Abinard">,
 #<User:0x007fc8bb27ac28
  id: 2,
  email: "gab@gab.com",
  password: "1234",
  first_name: "Gab",
  last_name: "Gabifor">,
 #<User:0x007fc8bb27a890
  id: 3,
  email: "liz@liz.com",
  password: "1234",
  first_name: "Liz",
  last_name: "Lizzard">,
 #<User:0x007fc8bb27a228
  id: 4,
  email: "wiz@wiz.com",
  password: "1234",
  first_name: "Wiz",
  last_name: "Wizly">,
 #<User:0x007fc8bb278fe0
  id: 5,
  email: "gnat@gnat.com",
  password: "1234",
  first_name: "Gnat",
  last_name: "Gnater">,
 #<User:0x007fc8bb278ba8
 id: 6,
   email: "fup@fup.com",
   password: "1234",
   first_name: "Fup",
   last_name: "Fupingsworth">,
  #<User:0x007fc8bb278658
   id: 7,
   email: "shoe@shoe.com",
   password: "1234",
   first_name: "Shoe",
   last_name: "Shoelast">,
  #<User:0x007fc8bb287ef0
   id: 8,
   email: "sock@sock.com",
   password: "1234",
   first_name: "Sock",
   last_name: "Socker">]

//////
///Pick a user, retrieve all of the tasks assigned to them///
//////
   [3] pry(main)> u = User.find(3)
  D, [2015-09-11T11:32:59.307859 #6566] DEBUG -- :   User Load (0.4ms)  SELECT  "users".* FROM "users" WHERE "users"."id" = $1 LIMIT 1  [["id", 3]]
  => #<User:0x007fc8bb68ed28
 id: 3,
 email: "liz@liz.com",
 password: "1234",
 first_name: "Liz",
 last_name: "Lizzard">
 [5] pry(main)> u.tasks
  D, [2015-09-11T11:33:43.911960 #6566] DEBUG -- :   Task Load (0.3ms)  SELECT "tasks".* FROM "tasks" WHERE "tasks"."user_id" = $1  [["user_id", 3]]
  => [#<Task:0x007fc8b9ccadb0
  id: 1,
  name: "fix problem 1",
  description: nil,
  due_date: nil,
  user_id: 3,
  project_id: 4>]

//////
///Pick a project, retrieve all of the tasks associated with that project///
//////
6] pry(main)> p = Project.find(4)
D, [2015-09-11T11:36:46.442884 #6566] DEBUG -- :   Project Load (0.5ms)  SELECT  "projects".* FROM "projects" WHERE "projects"."id" = $1 LIMIT 1  [["id", 4]]
=> #<Project:0x007fc8bb77c488
 id: 4,
 name: "build playground",
 description: "lets users's kids play",
 created_at: 2015-09-11 14:47:46 UTC,
 updated_at: 2015-09-11 14:47:46 UTC>
[7] pry(main)> p.tasks
D, [2015-09-11T11:36:52.962362 #6566] DEBUG -- :   Task Load (0.3ms)  SELECT "tasks".* FROM "tasks" WHERE "tasks"."project_id" = $1  [["project_id", 4]]
=> [#<Task:0x007fc8b9d1b1e8
  id: 1,
  name: "fix problem 1",
  description: nil,
  due_date: nil,
  user_id: 3,
  project_id: 4>]

//////
///Pick a task, retrieve the associated project.///
//////
1] pry(main)> t = Task.first
D, [2015-09-11T11:48:47.084543 #7152] DEBUG -- :   Task Load (1.0ms)  SELECT  "tasks".* FROM "tasks"  ORDER BY "tasks"."id" ASC LIMIT 1
=> #<Task:0x007fcc5a89b588
 id: 1,
 name: "fix problem 1",
 description: nil,
 due_date: nil,
 user_id: 3,
 project_id: 4>
[2] pry(main)> t.project
D, [2015-09-11T11:48:58.367669 #7152] DEBUG -- :   Project Load (0.8ms)  SELECT  "projects".* FROM "projects" WHERE "projects"."id" = $1 LIMIT 1  [["id", 4]]
=> #<Project:0x007fcc58b653b0
 id: 4,
 name: "build playground",
 description: "lets users's kids play",
 created_at: 2015-09-11 14:47:46 UTC,
 updated_at: 2015-09-11 14:47:46 UTC,
 task_id: nil>
