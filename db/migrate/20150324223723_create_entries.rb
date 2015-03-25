class CreateEntries < ActiveRecord::Migration
  def change
    create_table :entries do |t|
      t.string  :word 
      t.string  :description
      t.string  :example 
      t.belongs_to :user 
      t.belongs_to :letter
    end
  end
end
