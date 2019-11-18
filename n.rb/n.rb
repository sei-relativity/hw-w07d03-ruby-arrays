# First question

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

  upper_case_full_names = students.map do |std|
   "#{std[:first_name].upcase} #{std[:last_name].upcase}" 
  end

puts upper_case_full_names

# Second question

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

  first_order_for_each_user = users.map do |user| 
    "#{user[:orders].first}"
  end

  puts first_order_for_each_user

# Third question

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
  coffee_average_per_person = people.map do |person|

    total_amount = 0
    counter = 0
    person[:transactions].each do |trans| 
        if trans[:type] == "COFFEE"
            counter += 1
            total_amount += trans[:amount]
            # puts total_amount
        end
    end
    average = total_amount/counter
    ":name=> #{person[:name]}, :coffee_average=> #{average}"
  end

puts coffee_average_per_person

# Fourth question

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

  most_expensive_products_by_store = stores.map do |store|
    most_expensive_product = 0
    description = ""
    store_name = store[:store_name]


    store[:products].each do |product|
        if most_expensive_product <product[:price]
            most_expensive_product =product[:price]
            description =product[:description]
        end
    end

    "{:store_name=> #{store_name} ,
     most_expensive_product=> {:description=> #{description} , 
    :price=> #{most_expensive_product}}}"

end

puts most_expensive_products_by_store