class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network 
    
    def actors_list
        # first_name = self.actors.map {|t| t.first_name}
        # last_name = self.actors.map {|t| t.last_name}
        # first_name_string = first_name.join("")
        # last_name_string = last_name.join("")
        # "#{first_name_string} #{last_name_string}"
        self.actors.map {|actor| "#{actor.first_name} #{actor.last_name}"}
    end
end