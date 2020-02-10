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

### Views: Index
| filename | description |
| :---         |     :---:      |
| app\views\welcome\index.html.erb | index page displayed when requesting localhost:3000 |

### Views: Articles
| filename | description |
| :---         |     :---:      |
| app\views\articles\index.html.erb | displays all cars in database |
| app\views\articles\new.html.erb | create a new article |
| app\views\articles\show.html.erb | displays a specific article (provided params id) |

### Views: Cars
| filename | description |
| :---         |     :---:      |
| app\views\cars\index.html.erb | displays all cars in database |
| app\views\cars\new.html.erb | create a new car |
| app\views\cars\show.html.erb | displays a specific car (provided params id) |

### Views: Devise
| filename | description |
| :---         |     :---:      |
| app\views\devise\registrations\new.html.erb | sign up for a new user |
| app\views\devise\registrations\edit.html.erb | edit profile page for current user |
| app\views\devise\sessions\new.html.erb | log in page for existing user |
| app\views\layouts\application.html.erb | top navbar that displays either current users username if signed in, or 'sign up' and 'log in' links |
