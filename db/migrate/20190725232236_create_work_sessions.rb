class CreateWorkSessions < ActiveRecord::Migration[5.2]
  def change
    create_table :work_sessions do |t|
      t.string :start_time
      t.string :end_time
      t.integer :total_time
      t.string :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
