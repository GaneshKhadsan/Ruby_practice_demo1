class Student < ApplicationRecord
    
    validates :name, presence: true,
                    length: { minimum: 3 }
               
    validates :email, presence: true, uniqueness: true
    
    validates :dob, presence: true

    validates :phone, presence: true,
    numericality: { only_integer: true },
                    length:{in: 6..10 }
                    
  
end
