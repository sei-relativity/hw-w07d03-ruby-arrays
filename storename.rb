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

most_expensive_products_by_store = stores.map do |product|
    if product[:products][0][:price] > product[:products][1][:price]
     most_expensive_product = product[:products][0]
    else
     most_expensive_product = product[:products][1]
    end
    {
     store_name: product[:store_name],
     most_expensive_product: most_expensive_product
    }
end
puts most_expensive_products_by_store
