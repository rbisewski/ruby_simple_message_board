# Simple Ruby Message Board - A web message board using ruby-on-rails

This is a simple application that demonstrates a message board design with
the following features:

* User Sign Up
* Login and Logout
* Create / Edit / Delete Messages from the Message Board
* Create / Edit / Delete Comments from the individual Messages
* Basic Form Validation
* Rspec Unit Tests
* Capybara Feature Testing

Written for ruby-on-rails, this uses devise to handle the user logins,
simple_form for the forms, and rspec and capybara for the tests.

# Requirements

Specifically, the following rubygems are required:

* bootstrap-sass
* devise 
* capybara
* rspec
* simple_form 
* spring 

Recommend running this on Linux as it has not been tested for other
platforms. Specifically, it was created on a Fedora 25 image via docker.

Feel free to email me if this does not appear to work on your platform,
ideally with the error message in question or a strong idea of what the
problem might be.


# Running

0) You may need one or more of the following, if they are not installed

* ruby, rails, gcc, nodejs, make, sqlite, sqlite-devel
* zlib, zlib-devel (only relevant to older Debian versions)
* libsqlite3, libsqlite3-dev, zlib1g, zlib1g-dev (only relevant to Ubuntu)
* redhat-rpm-config (only relevant to Fedora)

1) Clone the repo using git

2) Gather the necessary gems

bundle install

3) Load the schema

rake db:schema:load

3) Run the application on rails

rails s

4) Run the rspec and capybara tests

rake spec


# Authors

Written by Robert Bisewski at Ibis Cybernetics. For more information, contact:

* Website -> www.ibiscybernetics.com

* Email -> contact@ibiscybernetics.com
