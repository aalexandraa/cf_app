require 'rails_helper'


describe Product do
  before do
    #here you put your code to generate test content
<<<<<<< HEAD
    @product = Product.create!(name: "race bike", description: "Supexsr fast bike.", price: "299", image_url: "bestbike.jpg")
=======
    @product = Product.create!(name: "race bike", description: "Super fast bike.", price: "299", image_url: "bestbike.jpg")
>>>>>>> 3439b9509f01ffdf8233a970ca8345fa75891a87
    @user = User.create!(email: "tardarsauce@grumpy.com", password: "GrumpyCat191")
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