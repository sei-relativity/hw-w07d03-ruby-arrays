#part one #

# students = [
#   {
#     first_name: "Lamees",
#     last_name: "AlFallaj",
#   },
#   {
#     first_name: "Aisha",
#     last_name: "AlDabbagh",
#   },
#   {
#     first_name: "Abdulwahhab",
#     last_name: "AlBalla",
#   },
# ]
# upper_case_full_names = []
# students.each do |e|
#   temp1 =
#     upper_case_full_names.push("#{e[:first_name]} #{e[:last_name]}".upcase)
# end
# p upper_case_full_names

# 2. Find the first order for each user
users = [
  {
    name: "Fahad",
    orders: [
      {
        description: "a bike",
      },
    ],
  },
  {
    name: "Abdulrahman",
    orders: [
      {
        description: "bees",
      },
      {
        description: "fishing rod",
      },
    ],
  },
  {
    name: "Muhannad",
    orders: [
      {
        description: "a MacBook",
      },
      {
        description: "The West Wing DVDs",
      },
      {
        description: "headphones",
      },
      {
        description: "a kitten",
      },
    ],
  },
]

first_order_for_each_user = []
users.each do |e|
  first_order_for_each_user.push(e[:orders].first[:description])
end

p first_order_for_each_user
