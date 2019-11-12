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
#   first= students.map {|val| val[:first_name].upcase +
#   " " + val[:last_name].upcase } 
#   upper_case_full_names.push(first)
#   puts  upper_case_full_names 

#   users = [
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
#   order=users.map {|val| val[:orders][0]} 
#   first_order_for_each_user.push(order)
#   puts first_order_for_each_user 


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
  
  

  coffee_average_per_person = people.map do |val|
    count = 0
    avg = 0
    val.transactions.each do |transaction|
      if transaction.type == 'COFFEE'
        count += 1
        avg += transaction.amount
      end
    end
   avg/count
  end 
 







