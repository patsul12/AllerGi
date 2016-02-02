require "spec_helper"

describe Keyword do
  describe "#new" do
    it "allows you to create a new keyword" do
      test_keyword = Keyword.create({name: "woohoo"})
      expect(Keyword.find(test_keyword.id).name()).to(eq("woohoo"))
   end
  end

  describe "#update" do
    it "allows you to create a new keyword" do
      test_keyword = Keyword.create({name: "woohoo"})
      test_keyword.update({name: "no"})
      expect(Keyword.find(test_keyword.id).name).to(eq("no"))
    end
  end
end