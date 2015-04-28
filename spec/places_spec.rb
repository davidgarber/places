require('rspec')
require('places')

describe(Places) do
  describe("#countries") do
    it("lets you list the country you've been to") do
      test_places = Places.new("Spain")
      expect(test_places.countries()).to(eq("Spain"))
    end
  end

  describe('.all') do
    it("creates a blank array for you to fill") do
      expect(Places.all()).to(eq([]))
    end
    end
end
