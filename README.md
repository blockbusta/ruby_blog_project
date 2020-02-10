# itay_ruby_assignment

## Installation
1. `git clone https://github.com/abasukar/itay_ruby_assignment.git`
2. `rvm install ruby-2.6.5`
3. `bundle install`
4. `yarn install`
6. `rake db:migrate`
7. `rails s`
6. app should be visible at <strong>localhost:3000</strong>

## Structure

### Controllers
| filename | description |
| :---         |     :---:      |
| app\controllers\application_controller.rb | defines that user must be logged in order to access the web app, defines the required fields for user during sign-up or profile-edit |
| app\controllers\articles_controller.rb | contains the methods: index (for displaying all articles in database) show (for displaying a specific article id, provided in article_params) new (defines "created_by" value to be set according to current users' username, creates a new unsaved record, and renders the form) create (inserts the user input to the database) article_params (defines what basic parameters each article has) |
| app\controllers\cars_controller.rb | contains the methods: index (for displaying all cars in database), show (for displaying a specific car details given provided id from car_params), new (creates a new unsaved record and generates the create car form in the views), create (inserts the user input to the database), car_params (defines the car parameters) |
| app\controllers\welcome_controller.rb | defines method "index" which redirects the browser to **welcome\index.html.erb** upon reaching localhost:3000 |

### Models
| filename | description |
| :---         |     :---:      |
| app\models\application_record.rb | inherits from ActiveRecord::Base, a single point of entry for all the application models, so that ActiveRecord wont include unrelated methods |
| app\models\article.rb | defines article validations (empty, as there are no requirements for articles) |
| app\models\car.rb | defines validations for car, that includes: title exists (which is also validated on client side), avatar (photo) exists, that the uploaded photo is an image mime type, with the extensions jpeg,gif,png |
| app\models\user.rb | defines user validations, that includes: devise (user can register, be confirmed, be remembered, be validated), defines an array "role" that is either user or admin, defines role for user, defines roles for select box using humanize (for capitalization), and defines that user does not need to be confirmed via email |

### Route
| filename | description |
| :---         |     :---:      |
| config\routes.rb | ruby routes file: defines the resources (articles and cars), defines the controller for devise gem to be users, includes a redirection to the index page from both root and users |

### Views: Index
| filename | description |
| :---         |     :---:      |
| app\views\welcome\index.html.erb | index page displayed when requesting localhost:3000 |

### Views: Articles
| filename | description |
| :---         |     :---:      |
| app\views\articles\index.html.erb | display all articles in database |
| app\views\articles\new.html.erb | create a new article |
| app\views\articles\show.html.erb | display a specific article (provided params id) |

### Views: Cars
| filename | description |
| :---         |     :---:      |
| app\views\cars\index.html.erb | display all cars in database |
| app\views\cars\new.html.erb | create a new car |
| app\views\cars\show.html.erb | display a specific car (provided params id) |

### Views: Devise
| filename | description |
| :---         |     :---:      |
| app\views\devise\registrations\new.html.erb | sign up for a new user |
| app\views\devise\registrations\edit.html.erb | edit profile page for current user |
| app\views\devise\sessions\new.html.erb | log in page for existing user |
| app\views\layouts\application.html.erb | top navbar that displays either current users username if signed in, or 'sign up' and 'log in' links |
