class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :event_category
      t.text :event_date
      t.text :icon
      t.text :source
      t.references :star,
      null:false, foreign_key:
      true

      t.timestamps
    end
  end
end
