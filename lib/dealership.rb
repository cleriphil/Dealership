class Dealership
@@dealerships = []

  define_method(:initialize) do |name|
    @name = name

  end

  define_method(:name) do
    @name
  end

  define_singleton_method(:all) do
    @@dealerships
  end



end
