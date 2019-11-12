#_____________________________________________________________ Ruby Map Practice

# #____________________ 1. Return an array of each Student's full name, upper-cased
# students = [
#   {
#     first_name: 'Lamees',
#     last_name: 'AlFallaj'
#   },
#   {
#     first_name: 'Aisha',
#     last_name: 'AlDabbagh',
#   },
#   {
#     first_name: 'Abdulwahhab',
#     last_name: 'AlBalla',
#   }
# ]

# upper_case_full_names = []

# upper_case_full_names = students.map do |student|
#   1 way
#   "#{student[:first_name].upcase} #{student[:last_name].upcase}"
#   2 way
#   "#{student[:first_name].upcase + " " + student[:last_name].upcase}"
# end

# puts upper_case_full_names

# # Answer
# # LAMEES ALFALLAJ
# # AISHA ALDABBAGH
# # ABDULWAHHAB ALBALLA

# #____________________ 2. Find the first order for each user
# users = [
#   {
#     name: 'Fahad',
#     orders: [
#       {
#         description: 'a bike'
#       }
#     ]
#   },
#   {
#     name: 'Abdulrahman',
#     orders: [
#       {
#         description: 'bees'
#       },
#       {
#         description: 'fishing rod'
#       }
#     ]
#   },
#   {
#     name: 'Muhannad',
#     orders: [
#       {
#         description: 'a MacBook'
#       },
#       {
#         description: 'The West Wing DVDs'
#       },
#       {
#         description: 'headphones'
#       },
#       {
#         description: 'a kitten'
#       }
#     ]
#   }
# ]

# first_order_for_each_user = []

# first_order_for_each_user = users.map do |user|
#   # 1 way
#   "#{user[:orders].first}"
#   # 2 way
#   # "#{user[:orders][0]}"
# end

# puts first_order_for_each_user

# # Answer
# # {:description=>"a bike"}
# # {:description=>"bees"}
# # {:description=>"a MacBook"}

# #____________________ 3. Find the average amount spent on coffee, per transaction, for each person
# people = [
#   {
#     name: 'Sarah',
#     transactions: [
#       {
#         type: 'COFFEE',
#         amount: 7.43
#       },
#       {
#         type: 'TACOS',
#         amount: 14.65
#       },
#       {
#         type: 'COFFEE',
#         amount: 4.43
#       }
#     ]
#   },
#   {
#     name: 'Saud',
#     transactions: [
#       {
#         type: 'BIKES',
#         amount: 800.00
#       },
#       {
#         type: 'TACOS',
#         amount: 14.65
#       },
#       {
#         type: 'COFFEE',
#         amount: 4.43
#       }
#     ]
#   },
#   {
#     name: 'Norah',
#     transactions: [
#       {
#         type: 'COFFEE',
#         amount: 7.43
#       },
#       {
#         type: 'COFFEE',
#         amount: 100.00
#       },
#       {
#         type: 'COFFEE',
#         amount: 4.43
#       }
#     ]
#   }
# ]

# coffee_average_per_person = []

# coffee_average_per_person = people.map do |person|

#   coffee_average = 0
#   coffee_count  = 0
#   total_transactions_amount = 0

#   person[:transactions].each do |transaction|
#     if transaction[:type] == "COFFEE"
#       total_transactions_amount += transaction[:amount]
#       coffee_count += 1
#       # puts "\ntotal_transactions_amount: #{total_transactions_amount} inside each"
#       # puts "coffee_count: #{coffee_count} inside each"
#     end
#   end

#   # puts "_______________\ntotal_transactions_amount: #{total_transactions_amount} outside each"
#   # puts "coffee_count: #{coffee_count} outside each"

#   coffee_average = total_transactions_amount / coffee_count

#   {name:person[:name], coffe_average: coffee_average}
# end

# puts coffee_average_per_person

# # Answer
# # {:name=>"Sarah", :coffee_average=>5.93}
# # {:name=>"Saud", :coffee_average=>4.43}
# # {:name=>"Norah", :coffee_average=>37.28666666666667}

# #____________________ 4. Find the most expensive product for each store, with the store name:
# stores = [
#   {
#       store_name: 'Jarir',
#       products: [
#           {
#               description: 'Titanium',
#               price: 9384.33
#           },
#           {
#               description: 'Gold',
#               price: 345.54
#           }
#       ]
#   },
#   {
#       store_name: 'Tamimi',
#       products: [
#           {
#               description: 'Silver',
#               price: 654.44
#           },
#           {
#               description: 'Ruby',
#               price: 323.43
#           }
#       ]
#   },
#   {
#       store_name: 'Souq',
#       products: [
#           {
#               description: 'Opal',
#               price: 345.43
#           },
#           {
#               description: 'Sapphire',
#               price: 899.33
#           }
#       ]
#   }
# ]

# most_expensive_products_by_store = []

# # Answer
# # {:store_name=>"Jarir", :most_expensive_product=>{:description=>"Titanium", :price=>9384.33}}
# # {:store_name=>"Tamimi", :most_expensive_product=>{:description=>"Silver", :price=>654.44}}
# # {:store_name=>"Souq", :most_expensive_product=>{:description=>"Sapphire", :price=>899.33}}