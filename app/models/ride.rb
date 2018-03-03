class Ride < ApplicationRecord
  belongs_to :author, class_name: "User"

  validates :title, presence: true
  validates :starting_city, presence: true
  validates :starting_state, presence: true
  validates :ending_city, presence: true
  validates :ending_state, presence: true
  validates :starting_address, presence: true
  validates :ending_address, presence: true
  validates :distance_in_miles, presence: true
  validates :star_rating, presence: true
  validates_inclusion_of :star_rating, in: 1..5, message: "must be between 1 and 5"

  def format_starting_address
    self.starting_address.split.join("+")
  end

  def format_ending_address
    self.ending_address.split.join("+")
  end

  def format_starting_city_and_state
    city_and_state = "#{self.starting_city} #{self.starting_state}"
    city_and_state.split.join("+")
  end

  def format_ending_city_and_state
    city_and_state = "#{self.ending_city} #{self.ending_state}"
    city_and_state.split.join("+")
  end  

  def format_starting_location
    "#{format_starting_address},#{format_starting_city_and_state}"
  end

  def format_ending_location
    "#{format_ending_address},#{format_ending_city_and_state}"
  end
end
