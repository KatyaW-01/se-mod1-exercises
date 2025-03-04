
class Dock
    attr_reader :name, :max_rental_time, :rental_log
    def initialize(name,max_rental_time)
        @name = name
        @max_rental_time = max_rental_time
        @rental_log = {}
    end

    def rent(boat,renter)
        @rental_log[boat] = renter
    end
    
    def charge(boat)
        result = {}
        result[:card_number] = @rental_log[boat].credit_card_number
        

        if boat.hours_rented > @max_rental_time
            payment_amount = boat.price_per_hour * @max_rental_time
        else
            payment_amount = boat.hours_rented * boat.price_per_hour
        end

        result[:amount] = payment_amount

        return result
    
        
    end

    def return(boat)
        @rental_log.delete(boat)
    end

    def log_hour
        @rental_log.each_key do |boat|
            boat.add_hours
        end
    end

    
 
end