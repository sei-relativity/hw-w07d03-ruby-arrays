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
  
#   upper_case_full_names = students.map do |key| 
#    key.values[0].upcase + " " + key.values[1].upcase
    
#   end
# users = [
#     {
#         name: 'Fahad',
#         orders: [
#             {
#                 description: 'a bike'
#             }
#         ]
#     },
#     {
#         name: 'Abdulrahman',
#         orders: [
#             {
#                 description: 'bees'
#             },
#             {
#                 description: 'fishing rod'
#             }
#         ]
#     },
#     {
#         name: 'Muhannad',
#         orders: [
#             {
#                 description: 'a MacBook'
#             },
#             {
#                 description: 'The West Wing DVDs'
#             },
#             {
#                 description: 'headphones'
#             },
#             {
#                 description: 'a kitten'
#             }
#         ]
#     }
#   ]
  
#   first_order_for_each_user = users.map do |key|
#     key.values[1].first
#   end
#   p first_order_for_each_user
  
# people = [
#     {
#         name: 'Sarah',
#         transactions: [
#             {
#                 type: 'COFFEE',
#                 amount: 7.43
#             },
#             {
#                 type: 'TACOS',
#                 amount: 14.65
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 4.43
#             }
#         ]
#     },
#     {
#         name: 'Saud',
#         transactions: [
#             {
#                 type: 'BIKES',
#                 amount: 800.00
#             },
#             {
#                 type: 'TACOS',
#                 amount: 14.65
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 4.43
#             }
#         ]
#     },
#     {
#         name: 'Norah',
#         transactions: [
#             {
#                 type: 'COFFEE',
#                 amount: 7.43
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 100.00
#             },
#             {
#                 type: 'COFFEE',
#                 amount: 4.43
#             }
#         ]
#     }
#   ]
  
  
#   coffee_average_per_person = []
#     coffee_average_per_person = people.map do |index|
#     sum =0
#     num_of_coffee = 0
#     index[:transactions].each do |key|
#         if key[:type] == "COFFEE"
#             num_of_coffee += 1
#             sum += key[:amount]
#         end
#     end
#     #coffee_average_per_person.push({name: index[:name],coffee_average: sum/num_of_coffee}) 
#     {name: index[:name],coffee_average: sum/num_of_coffee}

#   end
#  p coffee_average_per_person
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
  stores.each do |index|
    highest_price = 0;
    item_desrciption = '';
    index[:products].each do |product|
        if product[:price] > highest_price
            highest_price = product[:price]
            item_desrciption = product[:description]
        end
    end
        most_expensive_products_by_store.push({store_name: index[:store_name], most_expensive_products: {description: item_desrciption, price: highest_price}})
    end
    
  p most_expensive_products_by_store
# input = ""
# students = []
# while input != "n" do
#   puts "Write Student name"
#   students.push(gets.chomp)
#   puts "Would you like to add a student? (y/n)"
#   input = gets.chomp
# end
# p students
