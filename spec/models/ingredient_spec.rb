require 'rails_helper'

describe Ingredient do
  it "is valid with a name" do
    ingredient = Ingredient.new(name: "Garlic")
    expect(ingredient).to be_valid
  end
  it "is invalid without a name" do
    ingredient = Ingredient.new()
    ingredient.valid?
    expect(ingredient.errors[:name]).to include("can't be blank")
  end
end