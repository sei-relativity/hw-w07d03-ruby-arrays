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
          
            arr = people.select{|item| item[:transactions]}.class
            puts arr.{|item| item[:type]}
            people.each do |value|
            coffee_average_per_person << value[:orders][0]
          end
          coffee_average_per_person.each do |value|
            puts value
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

          stores.each do |value|
            most_expensive_products_by_store << value[:orders][0]
          end

          most_expensive_products_by_store.each do |value|
            puts value
          end
      end

      # Bonus
      def add_student_loop

      end
end