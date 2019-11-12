## 1. Return an array of each Student's full name, upper-cased
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

upper_case_full_names =[]
students.map do |r|
    upper_case_full_names.push("#{r[:first_name].upcase} #{r[:last_name].upcase}")
end

p upper_case_full_names

## 2. Find the first order for each user

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

first_order = users.map do |r|

    order = "#{r[:orders].first}"
order

end
p first_order

## 3. Find the average amount spent on coffee, per transaction, for each person

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

people.each do |r|
    count=0
    average=0
    r[:transactions].each do|a|
        if a [:type] == "COFFEE"
            average+= a[:amount].to
            count+=1
        end
        average=average/count
        coffee_average_per_person.push({name: "#{r[:name]}", coffee_average: "#{average}"})
    end
end

## 4. Find the most expensive product for each store, with the store name:


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


store.each do |r|

    highPrice= ''
    max = 0
    r[:products].each do |a|
        if a[:price]>max

            highPrice= a [:description]

            max = a [:price]

        end
    end
    most_expensive_products_by_store.push("store_name: #{r[:store_name]}, most_expensive_prodect: #{highPrice},price: #{max}")

end

p most_expensive_products_by_store
end