class Character < ApplicationRecord
    validates :name, presence: true
    validates :power, presence: true
end
