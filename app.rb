
# students = [
#     {
#         first_name: 'Lamees',
#         last_name: 'AlFallaj'
#     },
#     {
#         first_name: 'Aisha',
#         last_name: 'AlDabbagh',
#     },
#     {
#         first_name: 'Abdulwahhab',
#         last_name: 'AlBalla',
#     }
#   ]
  

# names= students.map do |key|
#   puts  key.values[0].upcase + " " + key.values[1].upcase
#   end


# names= students.map do |students|
#         "#{students[:first_name].upcase}  #{students[:last_name].upcase}"
#       end
#     puts names


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

# first_order_for_each_user = []

# users.each { |index| 

# first_order_for_each_user.push(index[:orders].first)} 

# puts first_order_for_each_user

first_order_for_each_user = users.map do |name|
    name[:orders].first
end

puts first_order_for_each_user

# people = [
#   {
#       name: 'Sarah',
#       transactions: [
#           {
#               type: 'COFFEE',
#               amount: 7.43
#           },
#           {
#               type: 'TACOS',
#               amount: 14.65
#           },
#           {
#               type: 'COFFEE',
#               amount: 4.43
#           }
#       ]
#   },
#   {
#       name: 'Saud',
#       transactions: [
#           {
#               type: 'BIKES',
#               amount: 800.00
#           },
#           {
#               type: 'TACOS',
#               amount: 14.65
#           },
#           {
#               type: 'COFFEE',
#               amount: 4.43
#           }
#       ]
#   },
#   {
#       name: 'Norah',
#       transactions: [
#           {
#               type: 'COFFEE',
#               amount: 7.43
#           },
#           {
#               type: 'COFFEE',
#               amount: 100.00
#           },
#           {
#               type: 'COFFEE',
#               amount: 4.43
#           }
#       ]
#   }
# ]


coffee_average_per_person = []  
coffee_average_per_person = people.map do |person|
   average = 0
   number_of_coffee = 0
   person[:transactions].each do |item|
       if item[:type] == "COFFEE"
           average += item[:amount]
           number_of_coffee += 1
       end
   end
   average /= number_of_coffee
   {
       name: person[:name],
       coffee_average: average
   }
end





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

most_expensive_products_by_store = stores.map do |sto| 
    desc = ''
    max = 0
    sto[:products].map do |product| 

        if product[:price] > max
            desc = product[:description]
            max = product[:price]
        end
    end
    puts " #{sto[:store_name]}, most_expensive_product: #{desc}, price: #{max}"

end


