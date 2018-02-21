class AddIndexToUsersEmail < ActiveRecord::Migration[5.1]
  def change
    add_index :followers, :email, unique: true
  end
end
