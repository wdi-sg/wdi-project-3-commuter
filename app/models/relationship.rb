class Relationship < ApplicationRecord
  belongs_to :interest, class_name: 'User'
  belongs_to :interested, class_name: 'User'
end
