people = [
  {
    name: "Sarah",
    transactions: [
      {
        type: "COFFEE",
        amount: 7.43,
      },
      {
        type: "TACOS",
        amount: 14.65,
      },
      {
        type: "COFFEE",
        amount: 4.43,
      },
    ],
  },
  {
    name: "Saud",
    transactions: [
      {
        type: "BIKES",
        amount: 800.00,
      },
      {
        type: "TACOS",
        amount: 14.65,
      },
      {
        type: "COFFEE",
        amount: 4.43,
      },
    ],
  },
  {
    name: "Norah",
    transactions: [
      {
        type: "COFFEE",
        amount: 7.43,
      },
      {
        type: "COFFEE",
        amount: 100.00,
      },
      {
        type: "COFFEE",
        amount: 4.43,
      },
    ],
  },
]

coffee_average_per_person = []
people.each do |e|
  avg = 0
  count = 0
  name = e[:name]
  e[:transactions].each { |a|
    if (a.rassoc("COFFEE"))
      avg += a[:amount]
      count += 1
    end
  }
  coffee_average_per_person.push({ name: name, coffee_average: (avg / count) })
end
p coffee_average_per_person
