class Feature < ApplicationRecord
    has_many :listing_features
    has_many :listings, through: :listing_features
end
