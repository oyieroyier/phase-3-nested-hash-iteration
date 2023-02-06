require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddie Mercury" => {
      name: "Freddie",
      email: "freddie@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end


=begin 

A different approach; rejected by the checker.
 
def remove_strawberry(contacts)
  # your code here!
  contacts["Freddie Mercury"].each do |key, value|
    if value.include?("strawberry")
      # binding.pry
      value.delete("strawberry")
    end
  end
end

=end

# print the output to the terminal for inspection


def remove_strawberry(contacts)
  # your code here!
  contacts["Freddie Mercury"].each do |key, value|
    if key == :favorite_ice_cream_flavors
      value.delete_if { |item| item == "strawberry"}
    end
  end
end
p remove_strawberry(contacts)

