class CreateAttendances < ActiveRecord::Migration[5.0]
  def change
    create_table :attendances do |t|
      t.datetime :arriving_at
      t.datetime :leaving_at
      t.string :note
      t.datetime :attendance_date
      t.datetime :overtime
      t.text :task_memo
      t.integer :overwork_confirmation
      t.integer :change_confirmation

      t.timestamps
    end
  end
end
