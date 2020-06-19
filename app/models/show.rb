require 'pry'
class Show < ActiveRecord::Base
  has_many :characters  
  #has many characters in an array
  has_many :actors, through: :characters
  belongs_to :network
  
  def actors_list
    # binding.pry
    actors.map {|actor| actor.full_name}
      
  end
  
  def build_network(call_letters)
    new_network = Network.create(call_letters)
    new_network.shows << self
  end
end