class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    list = self.characters.map do |characters|
      characters.actor.full_name
    end
    list
  end
end