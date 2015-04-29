require('rspec')
require('dealership')

describe(Dealership) do
  # before() do
  #   Dealership.clear()
  # end

  describe('#name') do
    it('returns the name of the dealership') do
      test_dealership = Dealership.new("Bob's Used Cars")
      expect(test_dealership.name()).to(eq("Bob's Used Cars"))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Dealership.all()).to(eq([]))
    end
  end


#   describe('#id') do
#     it('returns the id of the dealership') do
#       test_dealership = Dealership.new("Bob's Used Cars")
#       expect(test_dealership.id()).to(eq(1))
#     end
#   end






  # describe('#clear') do
  #   it('empties out all of the saved dealerships') do
  #     Dealership.new("Bob's Used Cars").save()
  #     Dealership.clear()
  #     expect(Dealership.all()).to(eq([]))
  #   end
  # end


end
