class Recipe < ActiveRecord::Base
    belongs_to :user

    validates :title, :image_url, :ingredients, :instructions, presence: true
end
