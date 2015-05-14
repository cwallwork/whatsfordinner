require 'rails_helper'

describe Recipe do
  it "is valid with a name" do
    recipe = Recipe.new(name: "salsa verde")
    expect(recipe).to be_valid
  end
  it "is invalid without a name" do
    recipe = Recipe.new()
    recipe.valid?
    expect(recipe.errors[:name]).to include("can't be blank")
  end
  it "defaults to viewable: false, if not provided" do
    recipe = Recipe.new(name: "salsa verde")
    expect(recipe.viewable).to eq(false)
  end
  it "checks recipe url for validity"
end