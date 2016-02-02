require "spec_helper"

describe Dish do
  describe "#new" do
    it "allows you to create a new dish" do
      test_dish = Dish.create({name: "woohoo"})
      expect(Dish.find(test_dish.id).name()).to(eq("woohoo"))
   end
  end

  describe "#update" do
    it "allows you to create a new dish" do
      test_dish = Dish.create({name: "woohoo"})
      test_dish.update({name: "no"})
      expect(Dish.find(test_dish.id).name).to(eq("no"))
    end
  end
end