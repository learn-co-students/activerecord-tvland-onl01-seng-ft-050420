class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters

  def full_name
    self.first_name + " " + self.last_name
  end

  def list_roles
    self.characters.map do |character|
        show_id = character.show_id 
        show_name = Show.find_by(id: show_id).name
        "#{character.name} - #{show_name}"
    end
      
  end
  
end