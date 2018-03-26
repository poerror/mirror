class Task < ApplicationRecord
  enum status: [:pending, :running, :paused, :finished]

  has_many :project_tasks
  has_many :projects, through: :project_tasks, dependent: :destroy

  has_many :task_todos
  has_many :todos, through: :task_todos, dependent: :destroy

  has_many :subtasks, class_name: "Task", foreign_key: :task_id
  belongs_to :parent_task,  class_name: "Task", foreign_key: :task_id, optional: true
end
