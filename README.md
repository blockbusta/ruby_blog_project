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
| app\controllers\application_controller.rb | ? |
| app\controllers\articles_controller.rb | controller for articles, contains the methods: index (for displaying all articles in database) show (for displaying a specific article id, provided in article_params) new (which leads to new article page) create (which inserts a new articles' values into database) article_params (defines what basic parameters each article has) |
| app\controllers\cars_controller.rb | ? |
| app\controllers\pages_controller.rb | ? |
| app\controllers\welcome_controller.rb | ? |


### Models
| filename | description |
| :---         |     :---:      |
| app\models\application_record.rb | ? |
| app\models\article.rb | ? |
| app\models\car.rb | ? |
| app\models\user.rb | ? |

### Route
| filename | description |
| :---         |     :---:      |
| config\routes.rb | ruby route file, which directs the ? |

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


