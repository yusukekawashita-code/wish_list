class ChangeUserIdNullOnWishes < ActiveRecord::Migration[8.1]
  def change
    change_column_null :wishes, :user_id, false
  end
end
