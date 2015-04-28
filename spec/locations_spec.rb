require('rspec')
require('location')

describe(Location) do
  describe('#description') do
    it('name a place that user inputted') do
      test_place = Location.new('London')
      expect(test_place.description()).to(eq("London"))
    end
  end
  describe('.all') do
  it("its empty at first") do
      expect(Location.all()).to(eq([]))
  end
end



end
