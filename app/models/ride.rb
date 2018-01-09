class Ride < ApplicationRecord
  belongs_to :author, class_name: "User"

  validates :title, presence: true
  validates :starting_city, presence: true
  validates :ending_city, presence: true
  validates :starting_address, presence: true
  validates :ending_address, presence: true
  validates :distance_in_miles, presence: true
  validates :star_rating, presence: true
  validates_inclusion_of :star_rating, in: 1..5, message: "must be between 1 and 5"

end
