require 'rails_helper'

describe User, type: :model do
  let!(:user) { User.create!(username: "jseinfeld",
                        email: "jseinfeld@hello.com",
                        password: "helloworld"
                        )}

  subject { described_class.new(username: "gconstanza",
                                email: "gconstanza@hello.com",
                                password: "helloworld"
                                )}

  it 'is valid with valid attributes' do 
    expect(user).to be_valid
  end

  it 'is not valid without a username' do 
    user.username = nil
    expect(user).to_not be_valid
  end

  it 'is not valid without an email' do 
    user.email = nil
    expect(user).to_not be_valid
  end

  it 'is not valid if username is already taken' do 
    subject.username = "jseinfeld"
    expect(subject).to_not be_valid
  end

  it 'is not valid if email is already taken' do 
    subject.email    = "jseinfeld@hello.com"
    expect(subject).to_not be_valid
  end
end

describe "Associations" do
  it 'can be an author of many rides' do 
    association = User.reflect_on_association(:rides)
    expect(association.macro).to eq :has_many
  end
end
