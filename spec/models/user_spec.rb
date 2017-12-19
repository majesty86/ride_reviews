require 'rails_helper'

RSpec.describe User, type: :model do
  let!(:user) { User.create!(username: "jseinfeld",
                        email: "jseinfeld@hello.com",
                        password: "helloworld"
                        )}

  subject { described_class.new }

  it 'is valid with valid attributes' do 
    expect(user).to be_valid
  end

  it 'is not valid without a username' do 
    subject.email    = "gconstanza@hello.com"
    subject.password = "helloworld"
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email' do 
    subject.username = "gconstanza"
    subject.password = "helloworld"
    expect(subject).to_not be_valid
  end

  it 'is not valid if username is already taken' do 
    subject.username = "jseinfeld"
    subject.email    = "gconstanza@hello.com"
    subject.password = "helloworld"
    expect(subject).to_not be_valid
  end

  it 'is not valid if email is already taken' do 
    subject.username = "gconstanza"
    subject.email    = "jseinfeld@hello.com"
    subject.password = "helloworld"
    expect(subject).to_not be_valid
  end
end
