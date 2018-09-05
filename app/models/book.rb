class Book < ApplicationRecord
    
    belongs_to :author 
    validates :name, presence: true, length: {minimum: 10}
end
