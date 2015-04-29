class Dealership
@@dealerships = []


  define_method(:initialize) do |name|
    @name = name
    @id = @@dealerships.length().+(1)
    @cars = []
  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@dealerships
  end

  define_method(:id) do
    @id
  end

  define_singleton_method(:clear) do
    @@dealerships = []
  end

  define_method(:save) do
    @@dealerships.push(self)
  end

  define_method(:cars) do
    @cars
  end

  define_singleton_method(:find) do |identification|
    this_dealership = nil
    @@dealerships.each() do |dealership|
      if dealership.id().eql?(identification.to_i())
         this_dealership = dealership
      end
    end
    this_dealership
  end
end
