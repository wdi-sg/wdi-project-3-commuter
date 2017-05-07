class Travel < ApplicationRecord
      #  To finish this up I need to put a search method in the model and declare which fields the method should search for matching queries. In /app/models/recipe.rb I put the following code that looks for matches in the name, ingredients, and cooking instructions fields in the database. Note: The LIKE syntax is used for MySQL, but if you are deploying to Heroku or another platform that uses PostgreSQL use the ILIKE syntax instead.
  def self.search(search)
      where('start_route ILIKE ? OR end_route ILIKE ? OR timeslot ILIKE ?', "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
