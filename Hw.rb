# Q1:

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
  array_of_strings = students.map do |name| 
    "#{name[:first_name].upcase} #{name[:last_name].upcase}"
    # "#{name[:first_name]} #{name[:last_name]}" }
    # name.values
  end 
  puts array_of_strings 

Q2:

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
  
  first_order_for_each_user = users.map do |users| 
    "#{users[:orders].first}"
  end
  puts first_order_for_each_user

#Q3

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
    # this counter is counting the transactions
    counter = 0
    # this counter is counting the sums
    sum = 0
    person[:transactions].each do |transaction|
      if transaction[:type] == "COFFEE"
        counter += 1
        sum += transaction[:amount]
      end
    end
  sum/counter
  end  

  puts coffee_average_per_person




  #Q4:
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
  
#   most_expensive_products_by_store = stores.each do |stores|
#     products.each do |products|
#   "#{products[:price].max}"
 
#   end 
# end
#   puts most_expensive_products_by_store

most_expensive_products_by_store = stores.map do |a| 

    des = ''
    max = 0

    a[:products].map do |product| 

        if product[:price] > max
            des = product[:description]
            max = product[:price]
        end

    end
    puts " #{a[:store_name]},  #{des}, price: #{max}"

end