# Yoga Huaska 

App for centralizing sports and gym services. Users pay for a membership
and use on different types of services.


* Ruby version

```bash 
ruby --version
```
ruby 2.6.3p62 (2019-04-16 revision 67580) [x86_64-darwin18]

Make use of rvm for installing the ruby version. This allows having
more control in case ruby version needs to be changed. 

* System dependencies

Mac users
```bash 
brew install yarn rvm ansible 
```

Install ruby role using ansible-galaxy

```bash
ansible-galaxy install rvm.ruby
```

* Configuration


Install rails  and javascript dependencies 
using **bundle** and **yarn**.

```bash 
bundle install
yarn install 
```

Create the migrations in the database. 

```bash
rails db:reset db:setup
```

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
