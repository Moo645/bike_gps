class Bike < ApplicationRecord
    has_many :gps_records, dependent: :destroy
    # add 'dependent: :destroy' to destroy gps_records when bike destroied
    
    validates :name, presence: true, uniqueness: true    
end
