require 'rails_helper'

describe Ride, type: :model do
  let!(:user) { User.create!(username: "ckramer",
                        email: "ckramer@hello.com",
                        password: "helloworld"
                        )}

  subject { described_class.new(title: "Willis Tower to Revzilla",
                                starting_city: "Chicago",
                                starting_state: "IL",
                                ending_city: "Philadelphia",
                                ending_state: "PA",
                                starting_address: "223 S Wacker Dr.",
                                ending_address: "4020 S 26th St",
                                distance_in_miles: 306,
                                star_rating: 5,
                                author_id: user.id
                                )}

  it 'is valid with valid attributes' do 
    expect(subject).to be_valid
  end

  it 'has a title' do 
    subject.title = nil
    expect(subject).to_not be_valid
  end

  it 'has a starting city' do
    subject.starting_city = nil
    expect(subject).to_not be_valid
  end

  it 'has a starting state' do 
    subject.starting_state = nil
    expect(subject).to_not be_valid
  end

  it 'has an ending city' do 
    subject.ending_city = nil
    expect(subject).to_not be_valid
  end

  it 'has an ending state' do 
    subject.ending_state = nil
    expect(subject).to_not be_valid
  end

  it 'has a starting address' do 
    subject.starting_address = nil
    expect(subject).to_not be_valid
  end

  it 'has an ending address' do 
    subject.ending_address = nil
    expect(subject).to_not be_valid
  end
  
  it 'has a distance' do 
    subject.distance_in_miles = nil
    expect(subject).to_not be_valid
  end

  it 'has a star rating' do 
    subject.star_rating = nil
    expect(subject).to_not be_valid
  end

  it 'has a star rating of 1 or more' do 
    subject.star_rating = 0
    expect(subject).to_not be_valid
  end

  it 'has a star rating of 5 or fewer' do 
    subject.star_rating = 10
    expect(subject).to_not be_valid
  end
end

describe "Associations" do 
  it 'belongs to an author' do
    association = Ride.reflect_on_association(:author)
    expect(association.macro).to eq :belongs_to
  end
end

describe "Ride helper functions" do 
  let!(:user) { User.create!(username: "ckramer",
                             email: "ckramer@hello.com",
                             password: "helloworld"
                            )}

  let!(:ride1) { Ride.create!(title: "Lake Shore Drive Ride",
                              starting_state: "IL",
                              ending_state: "IL",
                              starting_city: "Evanston",
                              ending_city: "Chicago",
                              starting_address: "633 Clark St",
                              ending_address: "1410 Museum Campus Dr.",
                              distance_in_miles: 20,
                              star_rating: 3,
                              author_id: user.id
                               )}

  let!(:ride2) { Ride.create!(title: "College Ride",
                              starting_state: "IN",
                              ending_state: "IN",
                              starting_city: "Notre Dame",
                              ending_city: "West Lafayette",
                              starting_address: "204 Mendoza College of Business",
                              ending_address: "610 Purdue Mall",
                              distance_in_miles: 120,
                              star_rating: 2,
                              author_id: user.id
                               )}

  let!(:ride3) { Ride.create!(title: "Tri-State Tour",
                              starting_state: "IN",
                              ending_state: "WI",
                              starting_city: "West Lafayette",
                              ending_city: "Baraboo",
                              starting_address: "610 Purdue Mall",
                              ending_address: "1400 Great Wolf Dr",
                              distance_in_miles: 320,
                              star_rating: 3,
                              author_id: user.id
                               )}

  let!(:ride4) { Ride.create!(title: "Mackinac Island to Blue Island",
                              starting_state: "MI",
                              ending_state: "IL",
                              starting_city: "Mackinaw City",
                              ending_city: "Blue Island",
                              starting_address: "219 E Central Ave",
                              ending_address: "12700 Sacramento Ave",
                              distance_in_miles: 400,
                              star_rating: 5,
                              author_id: user.id
                               )}
   
  it 'filters rides by state' do 
    expect(Ride.filter_states).to eq(["IL", "IN", "MI", "WI"])
  end

end
