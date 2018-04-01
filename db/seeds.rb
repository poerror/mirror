# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

project1 = Project.find_or_create_by(name: "INBOX", description: "Everything else...")

  # Simple finished short term task
  project1_task1 = Task.find_or_create_by(
    name: "Fix table",
    description: "Finally fix the goddamn table",
    status: :finished
  )
  project1_task1.projects << project1 unless project1_task1.projects.include?(project1)
  project1_task1.save

  # Simple short term task
  project1_task2 = Task.find_or_create_by(
    name: "Order a new lamp",
    description: "Cannot handle dark anymore..."
  )
  project1_task2.projects << project1 unless project1_task2.projects.include?(project1)
  project1_task2.save

project2 = Project.find_or_create_by(name: "Improve English", description: "Time to improve language")

  # Long term task
  project2_task1 = Task.find_or_create_by(
    name: "Every day check a video from https://www.engvid.com",
    description: "Title explains everything",
    longterm: true
  )
  project2_task1.projects << project2 unless project2_task1.projects.include?(project2)
  project2_task1.save

project3 = Project.find_or_create_by(name: "Reading", description: "Time for reading books")

  # Task with multiple subtasks
  project3_task1 = Task.find_or_create_by(
    name: "Read 451 fahrenheit - Ray Bradbury",
    description: "Read this awesome book"
  )
  project3_task1.projects << project3 unless project3_task1.projects.include?(project3)
  project3_task1.save

    project3_task1_subtask1 = Task.find_or_create_by(
      name: "Read 451 fahrenheit - Ray Bradbury #1",
      description: "Finished on the page #39",
      status: :finished
    )
    project3_task1_subtask1.parent_task = project3_task1 unless project3_task1_subtask1.parent_task
    project3_task1_subtask1.save

    project3_task1_subtask2 = Task.find_or_create_by(
      name: "Read 451 fahrenheit - Ray Bradbury #2",
      description: "Finished on the page #56",
      status: :paused
    )
    project3_task1_subtask2.parent_task = project3_task1 unless project3_task1_subtask2.parent_task
    project3_task1_subtask2.save
