class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.string :title
      t.string :starting_city
      t.string :ending_city
      t.string :starting_address
      t.string :ending_address
      t.integer :distance_in_miles
      t.integer :star_rating
      t.references :author

      t.timestamps
    end
  end
end
