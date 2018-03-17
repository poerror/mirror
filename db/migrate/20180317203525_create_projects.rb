class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :name,               null: false
      t.text :description,          default: ""
      t.string :color,              default: ""
      t.datetime :last_activity_at

      t.timestamps
    end

    add_index :projects, :name, unique: true
  end
end
