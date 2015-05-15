require 'rails_helper'

describe User do
  let(:valid_user) {User.new(email:"user@example.com", password:"password",password_confirmation:"password")}

  it "is invalid without a valid password" do
    user = User.new(email:"a@b.com}")
    user.valid?
    expect(user.errors[:password]).to include("can't be blank")
  end

  it "is invalid with an invalid email address" do
    user = User.new(email:"a@b,com")
    user.valid?
    expect(user.errors[:email]).to include("is invalid")
  end

  it "is valid with an email address and password" do
    user = valid_user
    expect(user).to be_valid

  end
  it "is invalid with a duplicate email address" do
    user1 = valid_user
    user1.save
    user2 = User.new(email: "user@example.com", password:"password")
    user2.valid?
    expect(user2.errors[:email]).to include("has already been taken")
  end
end