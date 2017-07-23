class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.integer :user_id
      t.string :pic_url
      t.text :description

      t.timestamps
    end
  end
end
