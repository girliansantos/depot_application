class Product < ApplicationRecord
    validates :title, :description, :price, :image_url, presence: true
    validates :price, numericality: {greater_than_or_equals_to: 0.01}
    validates :title, uniqueness: true
    validates :image_url, allow_blank: true, format:{
        with: %r{\.(gif|jpg|png)\Z}i,
        message: 'Somente são aceitos os formatos JPG, PNG ou GIF'
    }
end
