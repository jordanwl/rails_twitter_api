# Rails Twitter API

Using [Rails Twitter](https://github.com/jwluong/rails_twitter) as a starting point, Rails Twitter API is my attempt at turning Rails Twitter (a Ruby on Rails 6.0 app with full MVC) into a GraphQL API using the graphql-ruby gem.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

To run the app, you'll need a full Rails environment.

### Installing

Clone the repo and then install the needed gems:

```
$ bundle install
```
*If your Yarn packages are out of date, run:*
```
$ yarn policies set-version
```

Next, migrate and seed the database:

```
$ rails db:migrate
$ rails db:seed
```

### Usage

Run the app in a local server:

```
$ rails server
```

Open http://localhost:3000/graphiql in your browser and based on the schemas defined below (files located in *app/graphql/types*), enter a query into GraphiQL.

*Example:*
![example query](https://i.imgur.com/BFhyJTi.png)

## Schema

User: 
* id (id)
* username (string)
* email (string)
* bio (string)
* tweets (tweet type)
* followers (user type)
* following (user type)

Tweets:
* id (id)
* content (string)
* userId (id)
* createdAt (graphql datetime)
* user (user type)

## Gems

* faker
* graphql-ruby

## Acknowledgments

* GraphQL on Rails: From zero to the first query (Dmitry Tsepelev & Polina Gurtovaya)
