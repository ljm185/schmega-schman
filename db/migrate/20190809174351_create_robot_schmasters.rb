class CreateRobotSchmasters < ActiveRecord::Migration[5.2]
  def change
    create_table :robot_schmasters do |t|
      t.string :name
      t.string :serial_number
      t.string :weapon
      t.string :weakness
      t.integer :game_id

      t.timestamps
    end
  end
end
