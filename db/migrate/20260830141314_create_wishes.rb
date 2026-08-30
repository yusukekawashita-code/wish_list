class CreateWishes < ActiveRecord::Migration[8.1]
  def change
    create_table :wishes do |t|
      t.string :title
      t.text :description
      t.boolean :completed, default: false, null: false

      t.timestamps
    end
  end
end
