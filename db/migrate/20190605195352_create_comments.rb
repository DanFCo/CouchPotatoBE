class CreateComments < ActiveRecord::Migration[5.2]
  def change
    create_table :comments do |t|
      t.integer :user_id
      t.integer :show_id
      t.string :date_time, default: Time.now
      t.string :comment

      t.timestamps
    end
  end
end
