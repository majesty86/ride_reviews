class AddStateToRides < ActiveRecord::Migration[5.1]
  def change
    add_column :rides, :starting_state, :string
    add_column :rides, :ending_state, :string
  end
end
