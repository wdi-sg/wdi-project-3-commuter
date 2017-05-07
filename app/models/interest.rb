class Interest < ApplicationRecord
  has_many :combos
  has_many :users, through: :combos
  has_many :travels, through: :combos
end
