require "spec_helper"

describe Restaurant do
  describe "#new" do
    it "allows you to create a new restaurant" do
      test_restaurant = Restaurant.create({name: "woohoo"})
      expect(Restaurant.find(test_restaurant.id).name()).to(eq("woohoo"))
   end
  end

  describe "#update" do
    it "allows you to create a new restaurant" do
      test_restaurant = Restaurant.create({name: "woohoo"})
      test_restaurant.update({name: "no"})
      expect(Restaurant.find(test_restaurant.id).name).to(eq("no"))
    end
  end
end