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
