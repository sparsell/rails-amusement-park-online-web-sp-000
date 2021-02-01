class Ride < ActiveRecord::Base

    has_one :attraction
    has_one :user

    validates :user_id, presence: true
    validates :attraction_id, presence: true
    
    def take_ride
        # updates ticket number
        #updates users' nausea
        #updates users' happiness
    end

end
