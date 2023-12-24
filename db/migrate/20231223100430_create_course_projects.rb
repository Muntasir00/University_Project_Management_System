class CreateCourseProjects < ActiveRecord::Migration[7.1]
  def change
    create_table :course_projects do |t|
      t.integer :course_id
      t.integer :project_id
      t.timestamps
    end
  end
end
