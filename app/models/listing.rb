class Listing < ApplicationRecord
  belongs_to :category
  belongs_to :engine
  enum conditions: {damaged: 0, used: 1, good: 2, excellent: 3}
  enum colors: {beige: 0, black: 1, blue: 2, bronze: 3, brown: 4, gold: 5, green: 6, grey: 7, magenta: 8, maroon: 9, burgundy: 10, orange: 11, pink: 12, purple: 13, red: 14, silver: 15, white: 16, yellow: 17}
  enum transmissions: {manual: 0, automatic: 1}
  enum starters: {pedal: 0, electric: 1}
  has_many :features, through: :listing_features
  has_many :listing_features, dependent: :destroy
  accepts_nested_attributes_for :listing_features
end
