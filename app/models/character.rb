class Character < ActiveRecord::Base
    belongs_to :actor 
    belongs_to :show 

    def say_that_thing_you_say
        name = self.name
        catchphrase = self.catchphrase
        "#{name} always says: #{catchphrase}"
    end
end