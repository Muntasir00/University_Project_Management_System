class ProjectsController < ApplicationController 
    def new 
        @project = Project.new
    end

    def create
        @project = Project.new(project_params)
        if @project.save
            flash[:notice] = "Project was successfully created"
            redirect_to current_user
        else
            render "new", status: :unprocessable_entity
        end

    end
    
    def index 
        @projects = Project.all

    end
    def show 
        @project = Project.find(params[:id])

    end
    def project_params
        params.require(:project).permit(:name, :description, course_ids: [])
    end
end