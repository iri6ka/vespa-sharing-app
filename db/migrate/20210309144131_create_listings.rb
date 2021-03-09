class CreateListings < ActiveRecord::Migration[6.0]
  def change
    create_table :listings do |t|
      t.string :name
      t.integer :price
      t.references :category, null: false, foreign_key: true
      t.text :description
      t.integer :condition
      t.boolean :insurance
      t.integer :images
      t.boolean :available

      t.timestamps
    end
  end
end
