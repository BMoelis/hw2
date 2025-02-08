# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!
# - Note rubric explanation for appropriate use of external resources.

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)
# - You are welcome to use external resources for help with the assignment (including
#   colleagues, AI, internet search, etc). However, the solution you submit must
#   utilize the skills and strategies covered in class. Alternate solutions which
#   do not demonstrate an understanding of the approaches used in class will receive
#   significant deductions. Any concern should be raised with faculty prior to the due date.

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!

# Generate models and tables, according to the domain model.
# Models
class Movie < Hash
end
# test_movie = Movie.new
# test_movie["title"] = "TestMovie"
# puts test_movie["title"]

class Actor < Hash
end
# test_actor = Actor.new
# test_actor["name"] = "TestActor"
# puts test_actor["name"]

class Role < Hash
end
# test_role = Role.new
# test_role["character"] = "TestRole"
# puts test_role["character"]

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# Inserting movie data
batman_begins = Movie.new
batman_begins["title"] = "Batman Begins"
batman_begins["year"] = 2005
batman_begins["rating"] = "PG-13"
batman_begins["studio"] = "Warner Bros."

dark_knight = Movie.new
dark_knight["title"] = "The Dark Knight"
dark_knight["year"] = 2008
dark_knight["rating"] = "PG-13"
dark_knight["studio"] = "Warner Bros."

dark_knight_rises = Movie.new
dark_knight_rises["title"] = "The Dark Knight Rises"
dark_knight_rises["year"] = 2012
dark_knight_rises["rating"] = "PG-13"
dark_knight_rises["studio"] = "Warner Bros."

# puts "Sample data added"

# Inserting actor data
christian_bale = Actor.new
christian_bale["name"] = "Christian Bale"

michael_caine = Actor.new
michael_caine["name"] = "Michael Caine"

liam_neeson = Actor.new
liam_neeson["name"] = "Liam Neeson"

# Inserting role data
role1 = Role.new
role1["movie"] = batman_begins
role1["actor"] = christian_bale
role1["character"] = "Bruce Wayne"

role2 = Role.new
role2["movie"] = batman_begins
role2["actor"] = michael_caine
role2["character"] = "Alfred"

role3 = Role.new
role3["movie"] = batman_begins
role3["actor"] = liam_neeson
role3["character"] = "Ra's Al Ghul"

# Prints a header for the movies output
puts "Movies"
puts "======"
puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
puts ""
puts "Top Cast"
puts "========"
puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
