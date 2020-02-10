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

### Views: Cars
| filename | description |
| :---         |     :---:      |
| app\views\cars\index.html.erb | displays all cars in database |
| app\views\cars\new.html.erb | create a new car |
| app\views\cars\show.html.erb | displays a specific car (provided params id) |
