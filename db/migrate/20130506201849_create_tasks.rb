class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :subject
      t.string :title
      t.string :priority
      t.date :duedate
      t.string :notes

      t.timestamps
    end
  end
end
