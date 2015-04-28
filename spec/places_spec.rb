require('rspec')
require('places')

describe(Places) do
  before() do
    Places.clear()
  end
  
  describe("#countries") do
    it("lets you enter a country you've been to") do
      test_places = Places.new("Spain")
      expect(test_places.countries()).to(eq("Spain"))
    end
  end

  describe('.all') do
    it("creates a blank array for you to fill") do
      expect(Places.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("lets you save a list of countries you've been to") do
      test_places = Places.new("Spain")
      test_places.save()
      expect(Places.all()).to(eq([test_places]))
    end
  end
  describe('.clear') do
    it("lets you clear list") do
      Places.new("Spain").save()
      Places.clear()
      expect(Places.all()).to(eq([]))
    end
  end
end
