class Item < ActiveRecord::Base


         def name_with_initial
           "#{first_name.first}. #{last_name}"
         end
end
