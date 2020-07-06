class Recipe < ActiveRecord::Base
    belongs_to :user

    validates :title, :image_url, :ingredients, :instructions, presence: true

    def slug
        name.downcase.gsub(" ","-")
    end
    
    def self.find_by_slug(slug)
        Recipe.all.find{|artist| artist.slug == slug}
    end
end
