class ChangeColumnInListings < ActiveRecord::Migration[6.0]
  def change
    change_column :listings, :available, :boolean, default: :true
  end
end
