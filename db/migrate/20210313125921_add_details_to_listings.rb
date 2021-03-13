class AddDetailsToListings < ActiveRecord::Migration[6.0]
  def change
    add_reference :listings, :engine, null: false, foreign_key: true
    add_column :listings, :odometer, :integer
    add_column :listings, :color, :integer
    add_column :listings, :transmission, :integer
    add_column :listings, :starter, :integer
  end
end
