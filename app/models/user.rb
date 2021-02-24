class User < ApplicationRecord
    validates :name, :age, :city, presence: true

    has_many :todos

    before_create do
        self.name = name.upcase
        self.city = city.upcase
    end
end
