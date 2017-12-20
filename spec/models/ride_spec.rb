require 'rails_helper'

describe Ride, type: :model do
  let!(:user) { User.create!(username: "ckramer",
                        email: "ckramer@hello.com",
                        password: "helloworld"
                        )}

  subject { described_class.new(starting_town: "Pittsburgh",
                                ending_town: "Philadelphia",
                                starting_intersection: "Forbes Ave. & Schenley Dr.",
                                ending_intersection: "S. 26th St. and Penrose Ferry Rd.",
                                distance_in_miles: 306,
                                star_rating: 5,
                                author_id: user.id
                                )}

  it 'is valid with valid attributes' do 
    expect(subject).to be_valid
  end

  it 'has a starting town' do
    subject.starting_town = nil
    expect(subject).to_not be_valid
  end

  it 'has an ending town' do 
    subject.ending_town = nil
    expect(subject).to_not be_valid
  end

  it 'has a starting intersection' do 
    subject.starting_intersection = nil
    expect(subject).to_not be_valid
  end

  it 'has an ending intersection' do 
    subject.ending_intersection = nil
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
