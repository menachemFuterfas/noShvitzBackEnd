class Category < ApplicationRecord
    has_many :products
    has_many :orders
end
