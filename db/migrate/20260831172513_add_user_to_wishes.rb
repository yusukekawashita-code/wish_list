class AddUserToWishes < ActiveRecord::Migration[8.1]
  def change
    add_reference :wishes, :user, null: true, foreign_key: true
  end
end
