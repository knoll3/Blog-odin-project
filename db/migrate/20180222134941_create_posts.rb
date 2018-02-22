class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.text :content
      t.text :title

      t.timestamps
    end
    add_index :posts, [:created_at]
  end
end
