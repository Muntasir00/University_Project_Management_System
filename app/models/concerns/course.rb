class Course < ApplicationRecord
    validates :name, presence: true, length: {minimum:3, maximum:50}
    validates :short_name, presence: true, length: {minimum:3, maximum:10}
    validates :description, presence: true, length: {minimum:15, maximum:100}
    has_many :student_courses
    has_many :students, through: :student_courses
    has_many :course_projects
    has_many :projects,through: :course_projects
end