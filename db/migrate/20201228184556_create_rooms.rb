class CreateRooms < ActiveRecord::Migration[6.0]
  def change
    create_table :rooms do |t|
      t.integer :user_id
      t.string :room_name, null: false, default: ""

      t.timestamps
    end
  end
end
