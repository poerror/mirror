class Task < ApplicationRecord
  enum status: [:pending, :running, :paused, :finished]

  has_many :subtasks, class_name: "Task", foreign_key: :task_id
  belongs_to :parent_task,  class_name: "Task", foreign_key: :task_id, optional: true
end
