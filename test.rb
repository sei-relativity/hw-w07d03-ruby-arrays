#1
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

 students.map do |student|
    upper_case_full_names.push(("#{student[:first_name]} #{student[:last_name]}").upcase)
 end
 p upper_case_full_names

###################################################

#2
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

  users.each do |user| 
    first_order_for_each_user.push(user[:orders].first)
  end

p first_order_for_each_user


###################################################

#3

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

  people.each{|person| 
    coffee = 0
    sum = 0
    person[:transactions].each do |transaction|
         if (transaction[:type] == "COFFEE")
            coffee += 1
            sum += transaction[:amount]
        end

    end
    coffee_average_per_person.push("#{person[:name]}, #{sum / coffee}")
}
p coffee_average_per_person


###################################################

#4

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
    most_price=0
    item =''
        store[:products].each do |product|
            if product[:price]> most_price
                item = product[:description] 
                most_price= product[:price]
            end
        end
        {store_name:store[:store_name], most_expensive_product: item, price:most_price}
      end

      p most_expensive_products_by_store

     