class CreateStars < ActiveRecord::Migration[6.0]
  def change
    create_table :stars do |t|
      t.text :who
      t.timestamps
      
      t.references :company,
      null:false, foreign_key:
      true
    end
  end
end
