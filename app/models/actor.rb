
require 'pry'

class Actor < ActiveRecord::Base
  has_many :shows, through: :characters
  has_many :characters


def full_name
    "#{self.first_name} #{self.last_name}"
end

def list_roles
    roles = self.characters.map do |characters|
      "#{characters.name} - #{characters.show.name}"
  end
  roles
end
end