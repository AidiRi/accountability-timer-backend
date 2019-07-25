class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :status
      t.string :title
      t.references :work_session, foreign_key: true

      t.timestamps
    end
  end
end
