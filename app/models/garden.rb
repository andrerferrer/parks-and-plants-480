class Garden < ApplicationRecord
    has_many :plants
    
    validates :name, presence: true
    validates :banner_url, presence: true
end
