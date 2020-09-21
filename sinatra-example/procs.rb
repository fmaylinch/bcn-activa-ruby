# See https://www.rubyguides.com/2016/02/ruby-procs-and-lambdas/

puts "Procs example"

def implicit_block(x)
    yield x
end

def explicit_block(x, &block)
    block.call x
end

implicit_block(2) do |number|
    puts number * 10
end

implicit_block(3) { |number| puts number * 2 }

explicit_block(4) { |number| puts number + 1 }
