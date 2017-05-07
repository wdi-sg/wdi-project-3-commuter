class Combo < ApplicationRecord
  belongs_to :user
  belongs_to :travel
  belongs_to :interest
end
