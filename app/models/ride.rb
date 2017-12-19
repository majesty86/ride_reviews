class Ride < ApplicationRecord
  belongs_to :author, class_name: "User"

  validates :starting_town, presence: true
  validates :ending_town, presence: true
  validates :starting_intersection, presence: true
  validates :ending_intersection, presence: true
  validates :distance_in_miles, presence: true
  validates :star_rating, presence: true, 
                          numericality: { greater_than: 0 }, 
                          numericality: { less_than_or_equal_to: 5 }
                          
end
