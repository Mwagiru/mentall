class CreateMentalItems < ActiveRecord::Migration[6.1]
  def change
    create_table :mental_items do |t|
      t.string :title
      t.string :description
      t.boolean :is_favorited
        
      t.timestamps
    end
  end
end
