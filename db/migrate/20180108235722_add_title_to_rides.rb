class AddTitleToRides < ActiveRecord::Migration[5.1]
  def change
    add_column :rides, :title, :string
  end
end
