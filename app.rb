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

upper_case_full_names = students.map do |student|
    "#{student[:first_name].upcase} #{student[:last_name].upcase}"
end

# puts upper_case_full_names 


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
    user[:orders].first
end

# puts first_order_for_each_user

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
coffee_average_per_person = people.each do |person|
    #vars
    coffes_per_day = 0 #init var
    coffee_average = 0# inital var
    total = 0 #inital var
    person[:transactions].each do |key|
       #check if type is coffee
        if key[:type].downcase == 'coffee'
            coffes_per_day++
            total +=key[:amount]
        end
    end
    coffee_average = total / coffes_per_day
    "#{person[:name]} #{total}"
end
# puts coffee_average_per_person


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
most_expensive_products_by_store = stores.map do |sotre|
    #vars
    expensive_item = 0
    desc = ""
    sotre[:products].each do |item|
        if expensive_item < item[:price]
            then expensive_item = item[:price]
            desc = item[:description]
        end
    end

    # puts "#{expensive_item} and #{desc}"
end
# puts most_expensive_products_by_store

def addFavStudent()
    favStudent = []
    if favStudent.empty?
        puts "add student?"
        student = gets.chomp
        favStudent.push(student)
    end
    puts "Do you want to add another one? : y/n"
    answer = gets.chomp.downcase
    until answer == "n" || answer == "no"
        student = gets.chomp
        favStudent.push(student)
        #ask again
        puts "Do you want to add another one? : y/n"
        answer = gets.chomp.downcase
    end
    puts "thank you #{favStudent}"
end
addFavStudent