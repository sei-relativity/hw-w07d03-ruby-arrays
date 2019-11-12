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

most_expensive_products_by_store = []
stores.each do |index|
  highest_price = 0 
  item_desrciption = '' 
  index[:products].each do |product|
      if product[:price] > highest_price
          highest_price = product[:price]
          item_desrciption = product[:description]
      end
  end
      most_expensive_products_by_store.push({store_name: index[:store_name], most_expensive_products: {description: item_desrciption, price: highest_price}})
  end
p most_expensive_products










































most_expensive_products_by_store
 = []
stores.each do |index|
  highest_price = 0;
  item_desrciption = '';
  index[:products].each do |product|
      if product[:price] > highest_price
          highest_price = product[:price]
          item_desrciption = product[:description]
      end
  end
      most_expensive_products_by_store.push({store_name: index[:store_name], most_expensive_products: {description: item_desrciption, price: highest_price}})
  end