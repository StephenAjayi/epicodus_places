class Location
  @@locations = []

  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:description) do
    @place
  end

  define_singleton_method(:all) do
  @@locations
  end

  define_method(:save) do
    @@locations.push(self)
  end

end
