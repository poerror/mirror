class CreateProjectTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :project_tasks, id: false do |t|
      t.references :project, foreign_key: true
      t.references :task, foreign_key: true

      t.timestamps
    end
  end
end
