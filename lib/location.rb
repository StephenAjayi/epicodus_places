class Location
  @@locations = []

  define_method(:initialize) do |place|
    @place = place
  end

  define_method(:description) do
    @place
  end
  
end
