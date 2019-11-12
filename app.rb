#1. Return an array of each Student's full name, upper-cased

students = [
    {
        first_name: 'Lamees',
        last_name: 'AlFallaj'
    },
    {
        first_name: 'Aisha',
        last_name: 'AlDabbagh',
    },
    {
        first_name: 'Abdulwahhab',
        last_name: 'AlBalla',
    }
  ]
  
  upper_case_full_names = []
#   / the solution 

  upper_case_full_names = students.map do |i|
      "#{i[:first_name].upcase} #{i[:last_name].upcase}"
  end
  puts upper_case_full_names
#   ////////////////END////////////////////

# 2. Find the first order for each user

users = [
    {
        name: 'Fahad',
        orders: [
            {
                description: 'a bike'
            }
        ]
    },
    {
        name: 'Abdulrahman',
        orders: [
            {
                description: 'bees'
            },
            {
                description: 'fishing rod'
            }
        ]
    },
    {
        name: 'Muhannad',
        orders: [
            {
                description: 'a MacBook'
            },
            {
                description: 'The West Wing DVDs'
            },
            {
                description: 'headphones'
            },
            {
                description: 'a kitten'
            }
        ]
    }
]

first_order_for_each_user = []
#   / the solution 

first_order_for_each_user = users.map do |i|
    "#{i[:orders].first}"  
end
puts first_order_for_each_user
#   ////////////////END////////////////////



# 3. Find the average amount spent on coffee, per transaction, for each person

  people = [
    {
        name: 'Sarah',
        transactions: [
            {
                type: 'COFFEE',
                amount: 7.43
            },
            {
                type: 'TACOS',
                amount: 14.65
            },
            {
                type: 'COFFEE',
                amount: 4.43
            }
        ]
    },
    {
        name: 'Saud',
        transactions: [
            {
                type: 'BIKES',
                amount: 800.00
            },
            {
                type: 'TACOS',
                amount: 14.65
            },
            {
                type: 'COFFEE',
                amount: 4.43
            }
        ]
    },
    {
        name: 'Norah',
        transactions: [
            {
                type: 'COFFEE',
                amount: 7.43
            },
            {
                type: 'COFFEE',
                amount: 100.00
            },
            {
                type: 'COFFEE',
                amount: 4.43
            }
        ]
    }
  ]
  
  
  coffee_average_per_person = []
#   / the solution 

coffee_average_per_person = people.map do |i|
    number_of_coffees = 0
    total_of_transactions = 0
    i[:transactions].each do |per_transaction| 
        if per_transaction[:type] == "COFFEE"
            number_of_coffees += 1
            total_of_transactions += per_transaction[:amount]
        end
    end

    coffee_average = total_of_transactions / number_of_coffees

 "name:#{i[:name]}, coffee_average=> #{coffee_average}"

end

puts coffee_average_per_person
   
#   ////////////////END////////////////////

#4. Find the most expensive product for each store, with the store name:

stores = [
    {
        store_name: 'Jarir',
        products: [
            {
                description: 'Titanium',
                price: 9384.33
            },
            {
                description: 'Gold',
                price: 345.54
            }
        ]
    },
    {
        store_name: 'Tamimi',
        products: [
            {
                description: 'Silver',
                price: 654.44
            },
            {
                description: 'Ruby',
                price: 323.43
            }
        ]
    },
    {
        store_name: 'Souq',
        products: [
            {
                description: 'Opal',
                price: 345.43
            },
            {
                description: 'Sapphire',
                price: 899.33
            }
        ]
    }
  ]
  
  most_expensive_products_by_store = []
#   / the solution 

  most_expensive_products_by_store = stores.map do |i|
      most_expensive_product = 0
      description = ""
      store_name = i[:store_name]
      
  
      i[:products].each do |n|
          if most_expensive_product < n[:price]
              most_expensive_product = n[:price]
              description = n[:description]
          end
      end
  
      "most_expensive_product=> #{store_name}, most_expensive_product=> , #{description}, #{most_expensive_product}"
  
  end
  puts most_expensive_products_by_store
  
#   ////////////////END////////////////////
