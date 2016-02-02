require "spec_helper"

describe Allergen do
  describe "#new" do
    it "allows you to create a new Allergen" do
      test_allergen = Allergen.create({name: "woohoo"})
      expect(Allergen.find(test_allergen.id).name()).to(eq("woohoo"))
   end
  end

  describe "#update" do
    it "allows you to create a new Allergen" do
      test_allergen = Allergen.create({name: "woohoo"})
      test_allergen.update({name: "no"})
      expect(Allergen.find(test_allergen.id).name).to(eq("no"))
    end
  end
end