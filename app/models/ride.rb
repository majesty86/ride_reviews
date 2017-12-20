class Ride < ApplicationRecord
  belongs_to :author, class_name: "User"

  validates :starting_town, presence: true
  validates :ending_town, presence: true
  validates :starting_intersection, presence: true
  validates :ending_intersection, presence: true
  validates :distance_in_miles, presence: true
  validates :star_rating, presence: true
  validates_inclusion_of :star_rating, in: 1..5, message: "must be between 1 and 5"

end
