class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string            :name,                null: false
      t.text              :description,         default: ""
      t.integer           :interval,            default: 0
      t.float             :duration,            default: 0
      t.integer           :priority,            default: 0
      t.integer           :status,              default: 0
      t.boolean           :longterm,            default: false
      t.references        :task,                foreign_key: true
      t.datetime          :last_activity_at

      t.timestamps
    end

    add_index :tasks, :name, unique: true
  end
end
