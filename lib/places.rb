class Places

  @@all_places = []

  define_method(:initialize) do |countries|
    @countries = countries
  end

  define_method(:countries) do
    @countries
  end

  define_singleton_method(:all) do
    @@all_places
  end

  define_method(:save) do
    @@all_places.push(self)
  end
end
