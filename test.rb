# # users = [
# #     {
# #         name: 'Fahad',
# #         orders: [
# #             {
# #                 description: 'a bike'
# #             }
# #         ]
# #     },
# #     {
# #         name: 'Abdulrahman',
# #         orders: [
# #             {
# #                 description: 'bees'
# #             },
# #             {
# #                 description: 'fishing rod'
# #             }
# #         ]
# #     },
# #     {
# #         name: 'Muhannad',
# #         orders: [
# #             {
# #                 description: 'a MacBook'
# #             },
# #             {
# #                 description: 'The West Wing DVDs'
# #             },
# #             {
# #                 description: 'headphones'
# #             },
# #             {
# #                 description: 'a kitten'
# #             }
# #         ]
# #     }
# #   ]
  
# #   first_order_for_each_user = users.each do |key|
# #     key.values[1].first
# #   end


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
   people.each do |index|
   avreg =0
   cups = 0
   index[:transactions].each do |key|
       if key[:type] == "COFFEE"
           cups += 1
           avreg += key[:amount]
       end
   end
   coffee_average_per_person.push({name: index[:name],coffee_average: avreg/cups})
 end
    p coffee_average_per_person
  end