def named(arg, first: arg, second:)
  puts first                         # => nil
  puts second                        # => nil
end

named("Beef", second: "The second Argument")  # => nil

# >> Beef
# >> The second Argument
