class Listing < ApplicationRecord
  belongs_to :category
  enum conditions: {damaged: 0, used: 1, good: 2, excellent: 3}
end
