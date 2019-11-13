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
peoples = people.map{|found_trans| found_trans[:transactions]}
amount = 0
times = 0

pp2 = peoples.each do|x| 
  x.each do |d|
  if d[:type] == "COFFEE"
  p d[:amount]
  times += 1
p times
amount+= d[:amount]

p "total #{amount}"

  end
 p"==========="
  end
  p avg = amount/times
  
 end



