class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters

    def full_name  #returns first and last name of actor
       "#{self.first_name} #{self.last_name}"
    end    

    def list_roles #lists all of the characters that actors has alongside the show that character is in
       
        self.characters.map do |c| 
            "#{c.name} - #{c.show.name}"
        end
        
    end   
end