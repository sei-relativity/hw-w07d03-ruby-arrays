#1

upper_case_full_names = []

upper_case_full_names = students.map do |name|
    "#{name[:first_name].upcase} #{name[:last_name].upcase}"
  end

  puts upper_case_full_names


#2

first_order_for_each_user = []
 
first_order_for_each_user = users.map do |num|
    puts "#{num[:orders].first}"
end

puts first_order_for_each_user


#3

coffee_average_per_person = []

coffee_average_per_person = people.map do |person|

    num_of_coffee = 0
    sum = 0

    person[:transactions].each do |num| 
        if num[:type] == "COFFEE"
            num_of_coffee += 1
            sum += num[:amount]
        end
    end

    average = sum / num_of_coffee

 "name:#{person[:name]}, average: #{average}"

end

puts coffee_average_per_person

#4

most_expensive_products_by_store = []

most_expensive_products_by_store = stores.map do |index|
   expensive_product = 0
   description = ""
   name = index[:store_name]

   index[:products].each do |product|
       if expensive_product < product[:price]
           expensive_product = product[:price]
           description = product[:description]
       end
   end

   " #{name} , most_expensive_product #{description} #{expensive_product} "

end

puts most_expensive_products_by_store