class User < ActiveRecord::Base
    has_secure_password

    has_many :recipes

    def slug
        name.downcase.gsub(" ","-")
    end
    
    def self.find_by_slug(slug)
        User.all.find{|artist| artist.slug == slug}
    end
end