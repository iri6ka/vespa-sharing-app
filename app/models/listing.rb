class Listing < ApplicationRecord
  belongs_to :category
  belongs_to :engine
  belongs_to :user
  enum condition: {damaged: 0, used: 1, good: 2, excellent: 3}
  enum color: {beige: 0, black: 1, blue: 2, bronze: 3, brown: 4, gold: 5, green: 6, grey: 7, magenta: 8, maroon: 9, burgundy: 10, orange: 11, pink: 12, purple: 13, red: 14, silver: 15, white: 16, yellow: 17}
  enum transmission: {manual: 0, automatic: 1}
  enum starter: {pedal: 0, electric: 1}
  has_many :listing_features, dependent: :destroy
  has_many :features, through: :listing_features
  accepts_nested_attributes_for :listing_features
  has_one_attached :picture

  before_save :remove_whitespace
  before_validation :change_price_to_cents, if: :price_changed?

  private

  def remove_whitespace # removing whitespace from name and description fields 
    self.name = self.name.strip 
    self.description = self.description.strip
  end

  def change_price_to_cents # changing pricing for the listing to cents
    self.price = (self.price * 100).round
  end

  def change_from_booked_to_available #changing a booked status to available
    if self.available == false
      change_available_status = self
      change_available_status.available == true
      change_available_status.save
      return change_available_status
    end
  end
  end