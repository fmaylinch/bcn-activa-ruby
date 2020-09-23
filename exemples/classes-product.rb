
class Product

    attr_reader :name, :units # available getters
    # attr_writer :price # available setters
    attr_accessor :price # setter + getter

    # constructor
    def initialize(name, price, units = 0)
        @name = name
        @price = price
        @units = units
    end

    def available()
        @units > 0
    end

    # Ruby calls this method automatically when the object needs to be converted to string
    def to_s()
        "#{@name} : #{@price} (units: #{units}, available: #{available})"
    end

    def add_units(units)
        @units += units
    end
end


def main()
    product1 = Product.new("macbook", 1000)
    product2 = Product.new("pen", 2, units = 10)

    product2.add_units(50)
    product2.add_units(20)

    puts product1
    puts product2
end

main()






