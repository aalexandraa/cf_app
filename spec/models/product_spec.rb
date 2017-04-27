require 'rails_helper'


describe Product do
  before do
    #here you put your code to generate test content

    @product = FactoryGirl.create(:product)

    @user = FactoryGirl.create(:user)

    @product.comments.create!(rating: 1, user: @user, body: "Meow!")
    @product.comments.create!(rating: 3, user: @user, body: "Meow Meow Meow!")
    @product.comments.create!(rating: 5, user: @user, body: "Meow Meow Meow Meow Meow!")
  end

  it "returns the average rating of all comments" do
    expect(@product.average_rating).to eq 3
  end

  it "is not valid" do
    expect(Product.new(description: "Nice bike")).not_to be_valid
  end
end
