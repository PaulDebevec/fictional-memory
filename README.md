
## Fictional Memory - API Technical Challenge

Fictional-memory is an API built to display my understanding of API design, and my ability to receive a specification and expose those endpoints to reveal the requested data.
 
## Table of Contents

* [About](#about)
  * [Tech Stack](#tech-stack)
  * [Schema](#schema)
* [Getting Started](#getting-started)
  * [Installation](#installation)
  * [Testing](#testing)
* [API Access Points](#api-endpoints)
* [Technical Questions](#technical-questions)

## About

Fictional Memory is a Rails API built to expose specified endpoints for a front-end application. I used this opportunity to also display my workflow through the GitHub [project board](https://github.com/PaulDebevec/fictional-memory/projects/1) attached to this repository, as well as keeping a record of important commands for setup through [this google sheet](https://docs.google.com/spreadsheets/d/1PkwBJFuLyXWhZCB7y00patmVpPMuqixcKCGQ_LPkKOw/edit?usp=sharing). I used this [miro board](https://miro.com/app/board/o9J_lTfQ0E8=/) to be my main information hub for keeping notes and recording assumptions.

### Tech Stack

***Stack*** | ***Testing framework***
------------ | -------------
Ruby: 2.6.6| RSpec
PostgreSQL: 12.2 | Capybara
Rails: 6.0.3 | Simplecov
Bcrypt (password encryption) | Shoulda-matchers
 ...| Pry (For debugging)

### Schema

![Schema Design](https://i.imgur.com/N6vOa0K.png)

## Getting Started

To get a local copy up and running follow the proceeding steps.

### Installation

1a. Clone the repo using SSH (If you choose this option skip to step 2)
```sh
git clone git@github.com:PaulDebevec/fictional-memory.git
```
OR

1b. Clone the repo using HTTPS
```sh
git clone https://github.com/PaulDebevec/fictional-memory.git
```
2. Install the Gem File
```ruby
bundle install
```
3. Create your environment
```ruby
rails db:{create,migrate,seed}
```

### Testing

Run the test suite from the root directory of the repository

```ruby
bundle exec rspec
```

## API Endpoints

View the [endpoints and their expected responses](https://github.com/PaulDebevec/fictional-memory/blob/main/api_calls_responses.md)

## Technical Questions

View my [answers to the technical questions](https://github.com/PaulDebevec/fictional-memory/blob/main/answers_to_technical_questions.md)

