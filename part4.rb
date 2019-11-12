stores = [
  {
    store_name: "Jarir",
    products: [
      {
              description: "Titanium",
              price: 9384.33,
            },
      {
              description: "Gold",
              price: 345.54,
            },
    ],
  },
  {
    store_name: "Tamimi",
    products: [
      {
              description: "Silver",
              price: 654.44,
            },
      {
              description: "Ruby",
              price: 323.43,
            },
    ],
  },
  {
    store_name: "Souq",
    products: [
      {
              description: "Opal",
              price: 345.43,
            },
      {
              description: "Sapphire",
              price: 899.33,
            },
    ],
  },
]

most_expensive_products_by_store = []

most_expensive_products_by_store = stores.map do |store|
  expensive = store[:products].max_by do |product|
    product[:price]
  end

  {
    name: store[:store_name],
    price: expensive[:price],
  }
end

puts most_expensive_products_by_store
