Welcome to my first ever Ruby on Rails project -- ***Vespa Sharing Club***.
___
____

[Vespa Sharing Club Website](http://vespa-sharing-app.herokuapp.com/) | [GitHub](https://github.com/iri6ka/vespa-sharing-app) | [Figma](https://www.figma.com/file/cV4K80IZUGnsc8nPIqoZ01/Vespa-sharing-app?node-id=0%3A1) | [Slide Deck](https://docs.google.com/presentation/d/19cIHRWymSg63P8SwISHhFmm9Tfxb49naW57HW7XlAZI/edit?usp=sharing) | [Trello project management](https://trello.com/b/xWwn74w9/vespa-sharing-marketplace-app)
____
___

## Description
### *What might be the problem and why it needs solving?*

The world is exploring new ways of micro mobility and mobility as well as pathways of developing carshare and rideshare spheres and industries. The problem with parking spaces is also quite substantial for biggest capitals of the world. Some of the Asian countries are particular big on using mopeds and scooters as it is a cheaper way of transport and cars are expensive and costly to own, but they also need less space to park and store.

New generations are more consious about owning and buying. A lot of people actually are happy to share their own transport with others for additional charge. I have searched for various websites allowing you to share their own vehicles so others can book those, hovewer I haven't been able to find any websites which would allow you to share their moto scooters or mopeds.

As a Vespa owner in the past, I am very passionate about the brand. I also like in particular that it is not only the brand, it brings all aspects about way of life, love of style and possibilities to share your experiences with other Vespa owners and members of Vespa clubs. Talking about Vespa clubs, you might be surprised, but there are so many [national Vespa clubs](https://vespaworldclub.org/national-clubs/) around the world with members actively communicating about the brand and scooters they love. 

So why not to combine a moto scooter sharing website with Vespa? Or to make a Vespa Sharing Club - a space where any Vespa ownder would be able to post their Vespa and give a possibility for others to book it for a ride or even a travel. 

### Purpose

The purpose of **Vespa Sharing Club** website is to create a platform where any Vespa owner from any country would be able to post their Vespa and give a possibility for other people to book that Vespa while paying a fee for using it.

As the project scales up that platform would give a possibility for the user to search for particular option, to sort by price, to look at user profiles and like particular options, look through history of booking, communicate with vespa owners through messaging feature. This platform can also provide additional information about destinations and sights around the city with suggestions on scenit routes or best parking locations. 

As this is my first Ruby on Rails project, for this moment my goal was to create a minimal viable product (MVP) of the website which would have all the basics for scaling up in the future. 

### Functionality / Features

Anyone who visits the website can look through Home page and get access to available Listing page where all already created Listings are showing. You can go into the details of each Listing and see price and other details about particular Vespa. 
The website allows a User to Sign up while creating it's user account. Logged in User then can either create it's own Vespa Listing while filling in the form with Vespa details or book already listed Vespa lising while paying a booking fee through Stripe. Once transaction is complete, User gets redirected to the page where User can look at the invoice.


### Target audience

Target audience for this project are:

1. Any students or teachers of Coder Academy. 
2. A potential employer while looking at my portfolio.
3. Anyone who loves Vespa!
4. Anyone who likes to ride moto scooters. And obviously have a license for this.
5. Anyone who is a member of a Vespa club.
6. Anyone who likes the idea of sharing their Vespa with others for an additional fee.
7. Anyone who thinks that it is a good idea for a start-up.


Hello everyone!

### Tech stack

Core:
- [Ruby on Rails version 6.0.3.5](https://guides.rubyonrails.org/v6.0/) (information on installation is avaiable via the link)
- Front end: HTML, CSS, Javascript, [Bootstrap](https://github.com/twbs/bootstrap), [W3 Schools CSS](https://www.w3schools.com/w3css/defaulT.asp)
- Database: [Postgres](https://www.postgresql.org/)
- Deployment: [Heroku](https://www.heroku.com/)
- Testing: [DBeaver](https://dbeaver.io/)

Integrations:
- Serure payment: [Stripe](https://stripe.com/)
- Image upload: [AWS S3](https://aws.amazon.com/s3/)

Gems:
- [Simpleform](https://github.com/heartcombo/simple_form)
- [Devise gem](https://rubygems.org/gems/devise/versions/4.2.0) 
- [CanCanCan gem](https://rubygems.org/gems/cancancan) 

## Installation

Before you install Rails, you should check to make sure that your system has the proper prerequisites installed. This app has been installed and launched using MacOS, if you are using Windows you mihgt need to follow steps as per below but for Windows. These include:

- **Ruby**

Open up your terminal and check that you have a Ruby version not later than 2.7.1p83 

``
$ ruby -v
ruby 2.7.1p83``


- **SQLite3**

you also need to check if the latest SQLite3 version is installed.

``
$ sqlite3 --version
``

More information is on [Ruby on Rails websote](https://guides.rubyonrails.org/v6.0/getting_started.html#installing-sqlite3) as well as on [SQLite3 website](https://www.sqlite.org/index.html).

- **Node.js**

Please, check that you have a Node.js version installed:

``
$ node --version
``

- **Yarn**

First check that you have a yarn installed and it is greater than 8.16.0
 
``
$ yarn -v
``

To install Yarn, follow the installation instructions at the [Yarn website](https://classic.yarnpkg.com/en/docs/install#mac-stable).

- **Install Rails**

To install Rails on your computer, please, run a command provided by RubyGems:

``
$ gem install rails``


To check version of Rails, use the following command:

``
$ rails --version
``

Current application uses version 6.0.3.5. If you have alternative version, some functionality of the app might not working, please, check [Ruby on Rails](https://guides.rubyonrails.org/) documentation on guidance how to fix an issue.

- **Postgresql**

You will also need to check that postgres is installed your your machine. 

``
$ postgres -V
postgres (PostgreSQL) 13.1 
``

If it is not installed, please, check the official documentation on guidance how to install it, so you are able to create databases on your local computer.

[PostgreSQL documentation](https://www.postgresql.org/docs/)
[Complete guide on getting started process - Ruby on Rails](https://guides.rubyonrails.org/v6.0/getting_started.html)

### *Tips for cloning the repo*

If you are cloning the repo, please, make sure that once cloned, first thing you need to do is to delete master key file in config folder. 

Next step is to generate your own master key file on your machine by using your console and using the following command: 

`EDITOR="code --wait" bin/rails credentials:edit`

This will generate a new master key file which then gets encrypted and stored at your local `credentials.yml.enc` file. 

Now you can safely use the application.

In order to properly run the application, you need to use the colsole and run a few commands.

1. Ensure that all gem depencensices work properly you need to run a gem bundler which will allow you to combine all gems working together:

`gem install bundler `
`gem install`


2. You need to create relevant databases and run appropriate migrations.

`rails db:create`
`rails db:migrate`
`rails db:seed`

If you want to look at the application from your internal server run a command

`rails s`

Have fun!

## User stories

Any user of the app should be able to see Home page and Listings page. They should be able to access Log In page, Sign up page and if User is signed in already, User should be able to Sign out.

[User stories](./docs/User-stories.png)

* A signed in User has basic CRUD functionality: create, read, update or delete actions. 
* Anyone vising a website can look through Listings page.
* A User who is signed in can look through existing Listings and also Create a new Listing.
* A User who has already created a Listing can Update or Destroy (delete) existing listing.
* A User who is identified as `edit_master` can update any listing within the website.
* A User who is identified as `super` has full CRUD functionality.