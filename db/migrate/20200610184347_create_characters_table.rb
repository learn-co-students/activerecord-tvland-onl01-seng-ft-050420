class CreateCharactersTable < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.belongs_to :actor
      t.belongs_to :show
    end

  end
end
