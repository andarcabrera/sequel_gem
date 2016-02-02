# Data base gem
The gem contains an executable to create a pg data base and connects to the db using sequel.


## Requirement
- ruby ~> 2.2.1
- bundler ~> 1.7
- rake
- pg
- sequel
- rspec
- simplecov


## Installation
Clone the repository and install.

```bundle install```

Run executable with a db name. It will create a db if it does not already exist.

```create_db db_name```

## Usage
Include gem in your app

## Tests
From the root directory run:

```rspec spec```

A test db is created each time the tests are run and deleted after tests are completed.

After running the tests, open ```coverage/index.html``` in browser to see test coverage details.

To see tests detail, run:
 ```rspec spec --format documentation```

