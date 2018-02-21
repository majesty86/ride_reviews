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
  validate :new_ride_profanity_filter

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

  def new_ride_profanity_filter
    title_profanity_filter &&
    address_profanity_filter &&
    city_profanity_filter
  end

  private
    def title_profanity_filter
      profanity_filter(title, :title)
    end

    def address_profanity_filter
      profanity_filter(starting_address, :starting_address) && 
      profanity_filter(ending_address, :ending_address)
    end

    def city_profanity_filter
      profanity_filter(starting_city, :starting_city) &&
      profanity_filter(ending_city, :ending_city)
    end

    def profanity_filter(column_name, column_symbol)
      
      split_words(column_name).each do |word|
        add_language_errors(column_symbol) if inappropriate_words.include?(word.downcase)
      end
      
    end

    def split_words(column_name)
      column_name.split
    end

    def add_language_errors(column_name)
      errors.add(column_name, 'must contain appropriate language')
    end

    def inappropriate_words
      %w(ass bitch retard shit piss cunt fuck cocksucker motherfucker tits fart turd twat)
    end
end
