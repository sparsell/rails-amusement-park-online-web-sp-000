class User < ActiveRecord::Base
    has_secure_password

    has_many :rides
    has_many :attractions, through: :rides
    
    validates :name, presence: true
    validates :password, presence: true
    validates :happiness, presence: true
    validates :nausea, presence: true
    validates :height, presence: true
    validates :tickets, presence: true


   

    def mood
        #returns 'sad' when nauseus > happy
        #returns 'happy' when happy > nauseus
    end

end
