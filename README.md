# Tip Calculator Application
This is a take home test from Relworx.

A modern web application built with Ruby on Rails that helps users calculate tips and split bills among multiple people. The application includes an admin dashboard to track all calculations.

## Features

- Calculate tip amounts based on bill total
- Split bills among multiple people
- Predefined tip percentages (5%, 10%, 15%, 25%, 50%)
- Custom tip percentage option
- Admin dashboard with historical calculations
- Responsive design for mobile and desktop

## Technology Stack

- Ruby 3.3.1
- Rails 7.1.5
- PostgreSQL
- Stimulus.js
- Turbo

## Setup Instructions

1. Clone the repository:
git clone https://github.com/arnoldnekemiah/tip_calculator.git

2. Install the dependencies:
bundle install

3. Start the Rails server:
rails db:create
rails db:migrate
rails db:seed
rails server

If you have specific database credentials, please update the database.yml file with the correct credentials.

And also be cautious of the Gemfile, you might need to update the gem version if you are using a different version of Ruby.


4. Visit the application:
- Main calculator: `http://localhost:3000`
- Admin dashboard: `http://localhost:3000/admin/dashboard`

## Implementation Approach

### 1. Core Calculator Logic
- I tried to create a clean, user-friendly interface for bill input and tip selection and made the design close to the design on the Frontend Mentor website.
- I used Stimulus.js for reactive updates without page refreshes
- I implemented real-time calculations with immediate feedback

### 2. Data Persistence
- Created TipCalculation model to store calculation history
- Attributes include:
  - Bill amount
  - Tip percentage
  - Number of people
  - Total amount
  - Per-person amounts
  - Timestamps

### 3. Admin Dashboard
- Displays all historical calculations in reverse chronological order
- Includes detailed information about each calculation


## File Structure Overview

The application follows standard Rails conventions with key components:

- Controllers: Handle user input and business logic
- Models: Manage data and validations
- Views: Present information to users
- JavaScript: Handle real-time updates
- CSS: Style the application

