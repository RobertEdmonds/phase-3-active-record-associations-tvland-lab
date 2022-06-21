require 'pry'
class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
        first_name = self.first_name
        last_name = self.last_name
        "#{first_name} #{last_name}"
    end

    def list_roles
        # character_name = self.characters.map {|t| t.name}
        # show_name = self.shows.map {|t| t.name}
        # character_string = character_name.join("")
        # show_string = show_name.join("")
        # "#{character_string} - #{show_string}"
        self.characters.map {|character| "#{character.name} - #{character.show.name}"}
    end
end