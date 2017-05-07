class Travel < ApplicationRecord
  has_many :combos
  has_many :users, through: :combos
  has_many :interests, through: :combos
end
