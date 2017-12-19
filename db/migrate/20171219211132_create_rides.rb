class CreateRides < ActiveRecord::Migration[5.1]
  def change
    create_table :rides do |t|
      t.string :starting_town
      t.string :ending_town
      t.string :starting_intersection
      t.string :ending_intersection
      t.integer :distance_in_miles
      t.integer :star_rating
      t.references :user, foreign_key: :author_id

      t.timestamps
    end
  end
end
