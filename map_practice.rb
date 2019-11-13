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


students.map do |n|
    upper_case_full_names =  n[:first_name] + " " +n[:last_name]
     puts upper_case_full_names.upcase
    
   end




