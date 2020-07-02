Specifications for the Sinatra Assessment
Specs:

- [ ] Use Sinatra to build the app
- [ ] Use ActiveRecord for storing information in a database
- [ ] Include more than one model class (e.g. User, Post, Category)
- [ ] Include at least one has_many relationship on your User model (e.g. User has_many Posts)
- [ ] Include at least one belongs_to relationship on another model (e.g. Post belongs_to User)
- [ ] Include user accounts with unique login attribute (username or email)
- [ ] Ensure that the belongs_to resource has routes for Creating, Reading, Updating and Destroying
- [ ] Ensure that users can't modify content created by other users
- [ ] Include user input validations
- [ ] BONUS - not required - Display validation failures to user with error message (example form URL e.g. /posts/new)
- [ ] Your README.md includes a short description, install instructions, a contributors guide and a link to the license for your code
Confirm

- [ ] You have a large number of small Git commits
- [ ] Your commit messages are meaningful
- [ ] You made the changes in a commit that relate to the commit message
- [ ] You don't include changes in a commit that aren't related to the commit message



**BEFORE YOU CODE**

- [x] 1. Check project requirements in 'spec.md'
- [x] 2. Ideate! What do you want to build?
      - choose a domain you're familiar with!
      - choose a domain you care about
- [ ] 3. Wireframing & User Stories
      - Write down your models, their attributes, and their associations
      - "As a user, I can ......"
      - What does your app do?
- [ ] 4. Design your MVP = 'Minimum Viable Product' vs. what are my 'streatch goals'
      - Streatch goals - bonus feature you want but don't need 

**NOW WE CODE (BUT JUST OUR MODELS - NO CONTROLLERS OR VIEWS)**

- [x] 5. generate new project using corneal gem
- [x] 6. Create github repo
- [x] 7. Build your models
      - Migrations
      - Model classes
      - Associations 
- [x] 8. Test your models and associations in the console
      - Create some seed data
      - Tested our associations in tux
      - Adjust migrations as needed

### PART 2 — User Authentication

**NOW, CONSIDER USER CONTROLLER, APPLICATION CONTROLLER, AND VIEWS**

*IMPORTANT:* Build views and controller actions based on the flow of your app, one step at a time, testing as you go!

Use shotgun and pry (or raise/inspect) all the time!

[x] 9. Start with your UsersController
-Mount new controller config.ru with `use UsersController`

Add your get login/signup/logout routes
Add your post login/sign up routes
 
-[x] 10. Enable sessions in ApplicationController

Enable sessions
Create session secret
 
-[x] 11. Create your views

display login form
display signup form
user show page
 
-[x] 12. Create your ApplicationController helper methods

-#logged_in?
-#current_user
 
**Move on to Sign Up**
-[x] 13. Build out controller routes and views for signup.
      - Build your `get` signup route + "signup" view
      - Build your `post` signup route

PART 3 — CRUD
-[x] 14. Create your PostsController

      - Mount new controller in ApplicationController with use PostsController
 
-[x] 15. Implement READ functionality

      - Create get '/posts' route
      - Create index.erb view
-[] 16. Implement CREATE functionality

      - Create get '/posts/new' to render form
      - Create new.erb
      - Create post "/posts" do to create new post
-[] 17. Implement UPDATE functionality

      -Confirm use Rack::MethodOverride in config.ru
      -Create get '/posts/:id/edit' to render form
      -Create edit.erb
      -Create patch '/posts/:id' to create new post
-[] 18. Implement DELETE functionality

      -Confirm use Rack::MethodOverride in config.ru
      -Create delete form in show.erb view
      -Create delete '/posts/:id' route