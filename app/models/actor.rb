class Actor < ActiveRecord::Base
  has_many :characters
  has_many :shows, through: :characters
  
  def full_name
    return "#{self.first_name} #{self.last_name}"
  end
  
  def list_roles
    roles = []
    
    characters.each do |x|
      roles << "#{x.name} - #{x.show.name}"
    end
    
    return roles
  end
end