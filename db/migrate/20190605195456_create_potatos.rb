class CreatePotatos < ActiveRecord::Migration[5.2]
  def change
    create_table :potatos do |t|
      t.integer :user_id
      t.integer :show_id
      t.string :note, default: "Check out this Potato!"
      t.integer :counter, default: 0
      t.timestamps
    end
  end
end
