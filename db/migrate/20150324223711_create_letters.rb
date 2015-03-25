class CreateLetters < ActiveRecord::Migration
  def change
    create_table :letters do |t|
      t.string :symbol 
    end 
  end
end
