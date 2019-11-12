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

students.each do |full_name| 
upper_case_full_names << "#{full_name[:first_name].upcase} #{full_name[:last_name].upcase}"
end
 puts upper_case_full_names

# or
upper_case_full_names = students.map do |full_name|
    "#{full_name[:first_name].upcase} #{full_name[:last_name].upcase}"
end
puts upper_case_full_names


 #2. Find the first order for each user

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

first_order_for_each_user = users.map do |first_order|
    # "#{first_order[:orders][0]}"  #or
    "#{first_order[:orders].first}"  
end
puts first_order_for_each_user


#3. Find the average amount spent on coffee, per transaction, for each person

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

coffee_average_per_person = people.map do |customer|
    number_of_coffees = 0
    total_of_transactions = 0
    coffee_average = 0

    customer[:transactions].each do |per_transaction| 
        if per_transaction[:type] == "COFFEE"
            number_of_coffees += 1
            total_of_transactions += per_transaction[:amount]
        end
    end

    coffee_average = total_of_transactions / number_of_coffees

 "name:#{customer[:name]}, coffee_average: #{coffee_average}"

end

puts coffee_average_per_person
 

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

most_expensive_products_by_store = stores.map do |store|
    most_expensive_product = 0
    description = ""
    store_name = store[:store_name]
    

    store[:products].each do |product|
        if most_expensive_product < product[:price]
            most_expensive_product = product[:price]
            description = product[:description]
        end
    end

    "most_expensive_product: #{store_name}, most_expensive_product: , #{description}, #{most_expensive_product}"

end
puts most_expensive_products_by_store