
# Example

def calculate_interest_example(amount, interest, years)

    puts "amount: #{amount}, interest: #{interest}, years: #{years}"

    current_year = 1  # variable initialization

    while current_year <= years  # condition using the variable
        increment = amount * interest
        amount += increment
        puts "year #{current_year} : #{increment.round(2)} -> #{amount.round(2)}"
        current_year += 1  # the variable is incremented
    end

end



# show message
def greet()
    puts "Hi!"
end


# show message from parameter
def greet_person(name)
    puts "Hi #{name}!"
end


# calculate interest increment (print)

def display_interest(amount, interest)
    puts amount * interest
end


# calculate interest increment (return)

def calculate_interest(amount, interest)
    return amount * interest
end


# calculate interest increment after n times

def calculate_amount_after_interest(amount, interest, n)
    i = 1
    while i <= n 
        amount += calculate_interest(amount, interest)
        i += 1
    end
    return amount
end


def main()

    #calculate_interest_example(500, 0.05, 3)
    #calculate_interest_example(1000, 0.15, 4)

    greet()

    greet_person("Alex")

    display_interest(2000, 0.10)

    puts calculate_interest(500, 0.10)

    total = calculate_amount_after_interest(1000, 0.05, 10)
    puts total.round(2)
end

main()

