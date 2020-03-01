Using the Github search API to implement an autocomplete search box as a Ruby on Rails app for Nugit.

The webpage displays a search box with a table of results with the relevant fields of repository name, description, and date updated.

Steps taken to generate this application:
 1. Create a new Rails app with PostgreSQL as the database `rails new searchrepos --database=postgresql`
 2. Generate some scaffolding for the searchrepos model `rails g scaffold searchrepo title:string description:string time:text`. 
 3. Installed bootstrap, jquery, awesomplete(for autocomplete searchbox) to work with rails 6 according to this [link](https://stackoverflow.com/questions/58780725/getting-jquery-and-bootstrap-to-work-with-rails-6)
 4. Add `gem  'httparty'` in gemfile and run `bundle install`. This enables API calls to github search API.
 5. Ajax calls from github api is handled in the searchrepos controller whereby usage of partial update of webpage is called upon when a different search term or query is entered in the search box. Therefore only the table portion will update without refreshing the page


To run this application:

 1. `yarn install --check-files` to install required files
 2. `rails s` to start up the server
 3. Navigate to `localhost:3000`
 4. Type any search term in the search bar and search
 5. The relevant repositories will be populated on the table
