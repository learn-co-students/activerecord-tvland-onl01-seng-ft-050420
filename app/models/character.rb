class Character < ActiveRecord::Base
  belongs_to :actor
  belongs_to :show

  def say_that_thing_you_say

    "#{name} always says: #{catchphrase}"
  end

  def build_show(show_name)
    new_show = Show.new(show_name)
    self.show = new_show
  end

  def build_network(network_name)
    new_network = Network.new(network_name)
     show.network = new_network

  end


end
