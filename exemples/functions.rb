
# Example

def calculate_interest(amount, interest, years)

    puts "amount: #{amount}, interest: #{interest}, years: #{years}"

    current_year = 1  # variable initialization

    while current_year <= years  # condition using the variable
        increment = amount * interest
        amount += increment
        puts "year #{current_year} : #{increment.round(2)} -> #{amount.round(2)}"
        current_year += 1  # the variable is incremented
    end

end

calculate_interest(500, 0.05, 3)
calculate_interest(1000, 0.15, 4)




# show message


# show message from parameter


# calculate interest increment (print)


# calculate interest increment (return)


# calculate interest increment after n times




