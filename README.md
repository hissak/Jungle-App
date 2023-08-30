# Jungle

A mini e-commerce application built with Rails 6.1 for purposes of teaching Rails by example. Users are able to create accounts, login and purchase products. Admins can add or delete products, and can add categories.
Payment is completed with Stripe, after which an order summary is provided.

## Final Product

[Home Page](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.32.47%20PM.png?raw=true)
[Product list](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.33.01%20PM.png?raw=true)
[Product details]()
[Cart](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.33.09%20PM.png?raw=true)
[Stripe Pop-up](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.33.21%20PM.png?raw=true)
[Order Summary](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.33.51%20PM.png?raw=true)
[Admin Products](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.34.10%20PM.png?raw=true)
[Admin Categories](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.34.28%20PM.png?raw=true)
[Admin New Product](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.34.40%20PM.png?raw=true)
[Admin New Category](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.34.48%20PM.png?raw=true)
[Signup](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.35.08%20PM.png?raw=true)
[Login](https://github.com/hissak/Jungle-App/blob/master/Screenshots/Screenshot%202023-08-30%20at%205.35.11%20PM.png?raw=true)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rails db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Database

If Rails is complaining about authentication to the database, uncomment the user and password fields from `config/database.yml` in the development and test sections, and replace if necessary the user and password `development` to an existing database user.

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

- Rails 6.1 [Rails Guide](http://guides.rubyonrails.org/v6.1/)
- Bootstrap 5
- PostgreSQL 9.x
- Stripe
