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
puts upper_case_full_names
