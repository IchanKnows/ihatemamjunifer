class CreateHates < ActiveRecord::Migration[5.2]
  def change
    create_table :hates do |t|
    	t.string :name
    	t.text :message
    end
  end
end
