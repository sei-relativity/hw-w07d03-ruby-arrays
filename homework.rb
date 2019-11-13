class homework
    def upper_case_names
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
          
          students.each do |value|
            upper_case_full_names << "#{value[:first_name].upcase} #{value[:last_name].upcase}"
          end
          upper_case_full_names.each do |value|
            puts value
          end
    end

      def first_order
        
        users = [
            {
                name: 'Fahad',
                orders: [
                    {
                        description: 'a bike'
                    }
                ]
            },
            {
                name: 'Abdulrahman',
                orders: [
                    {
                        description: 'bees'
                    },
                    {
                        description: 'fishing rod'
                    }
                ]
            },
            {
                name: 'Muhannad',
                orders: [
                    {
                        description: 'a MacBook'
                    },
                    {
                        description: 'The West Wing DVDs'
                    },
                    {
                        description: 'headphones'
                    },
                    {
                        description: 'a kitten'
                    }
                ]
            }
          ]
          
          first_order_for_each_user = []
          users.each do |value|
            first_order_for_each_user << value[:orders][0]
          end
          first_order_for_each_user.each do |value|
            puts value
          end
      end

      def avg_spnt_coffee
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
          
          coffee_average_per_person = people.map do |name|
            total = 0
            count = 0
            name[:transactions].each do |transaction|
                if transaction[:type] == "COFFEE"
                   total += transaction[:amount]
                   count = count+1
                end
            end
                {name: name[:name],
                coffee_average: (total/count)
                }
        end
      end

      def mst_expsv_product_by_store
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

          most_expensive_products_by_store = stores.map do |store|
            expensive=0
            item =''
                store[:products].map do |product|
                    if product[:price]> expensive
                        item = product[:description] 
                        expensive= product[:price]
                    end
                end
                {store_name:store[:store_name], most_expensive_product: item, price:expensive }
              end
              most_expensive_products_by_store
      end

      # Bonus
      def add_student_loop

      end
end