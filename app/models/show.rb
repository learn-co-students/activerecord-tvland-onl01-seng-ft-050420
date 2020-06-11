class Show < ActiveRecord::Base
  has_many :characters
  belongs_to :network
  def actors_list
    self.characters.collect{|c|c.actor.full_name}
  end
end
