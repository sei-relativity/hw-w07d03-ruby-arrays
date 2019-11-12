# 1

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
  
#   upper_case_full_names = []

#   students.each{|name|
#     upper_case_full_names.push(("#{name[:first_name]} #{name[:last_name]}").upcase)}
# puts upper_case_full_names


# 2
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
  
#   first_order_for_each_user = []

#   users.each{|user| 
#     first_order_for_each_user.push(user[:orders].first)
# }

# puts first_order_for_each_user


# 3
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

#   people.each{|person| 
#     number_of_coffee = 0
#     coffe_total = 0
#     person[:transactions].each{
#         |transaction| if (transaction[:type] == "COFFEE")
#             number_of_coffee += 1
#             coffe_total += transaction[:amount]
#         end

#     }
#     coffee_average_per_person.push("#{person[:name]}, #{coffe_total / number_of_coffee}")
# }
# puts coffee_average_per_person
