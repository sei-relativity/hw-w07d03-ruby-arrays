coffee_average_per_person = []
people.each do |person| 
    coffee_total = []
    total_amount = 0
    

 person[:transactions].each do |trans| 
    puta = trans[:type]

   coffee_total.push(trans[:amount]) if puta == "COFFEE"
end
coffee_total.each do |num|
   total_amount += num 
end
 total_amount
 avg = total_amount/coffee_total.length
 coffee_average_per_person.push(avg , person[:name]) 
end
p  coffee_average_per_person.push
