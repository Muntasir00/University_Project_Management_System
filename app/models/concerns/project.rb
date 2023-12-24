class Project < ApplicationRecord
    validates :name, presence: true, length: {minimum: 3, maximum: 100}
    validates :description, presence: true, length: {minimum: 10, maximum:200}
    has_many :course_projects
    has_many :courses, through: :course_projects

end