#1st question
# students = [
#   {
#       first_name: 'Lamees',
#       last_name: 'AlFallaj'
#   },
#   {
#       first_name: 'Aisha',
#       last_name: 'AlDabbagh',
#   },
#   {
#       first_name: 'Abdulwahhab',
#       last_name: 'AlBalla',
#   }
# ]

# [students[first_name] ,students[last_name]].each do |F,L|
#     puts [F, L]
# end

# upper_case_full_names = students.map do |student|
#     upcasedStudent = "#{student[:first_name].upcase} #{student[:last_name].upcase}"
#     upcasedStudent
# end
# puts upper_case_full_names

# second question
# first_order_for_each_user = []
# users = [
#   {
#       name: 'Fahad',
#       orders: [
#           {
#               description: 'a bike'
#           }
#       ]
#   },
#   {
#       name: 'Abdulrahman',
#       orders: [
#           {
#               description: 'bees'
#           },
#           {
#               description: 'fishing rod'
#           }
#       ]
#   },
#   {
#       name: 'Muhannad',
#       orders: [
#           {
#               description: 'a MacBook'
#           },
#           {
#               description: 'The West Wing DVDs'
#           },
#           {
#               description: 'headphones'
#           },
#           {
#               description: 'a kitten'
#           }
#       ]
#   }
# ]

#   users.each do |user|
#  first_order_for_each_user.push(user[:orders][0])
# end
# p first_order_for_each_user

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

 


# coffee_average_per_person = []
# people.each do |person| 
#     coffee_total = []
#     total_amount = 0
    

#  person[:transactions].each do |trans| 
#     puta = trans[:type]

#    coffee_total.push(trans[:amount]) if puta == "COFFEE"
# end
# coffee_total.each do |num|
#    total_amount += num 
# end
#  total_amount
#  avg = total_amount/coffee_total.length
#  coffee_average_per_person.push(avg , person[:name]) 
# end
# p  coffee_average_per_person.push

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


   stores.each do |store|
    product = ""
    max=0
    products_with_highest=[]

   store[:products].each do |item|

if (product == "")
    product =  item[:description]
    max =  item[:price]
elsif (max < item[:price])

       max = item[:price]
       product =  item[:description]
end

end
products_with_highest.push("{#{store[:store_name]}, #{product}, #{max}}")
p products_with_highest
end




    
