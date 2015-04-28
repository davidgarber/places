class Places

  define_method(:initialize) do |countries|
    @countries = countries
  end

  define_method(:countries) do
    @countries
  end
end
