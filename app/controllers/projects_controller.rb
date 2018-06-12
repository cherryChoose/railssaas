class ProjectsController < ApplicationController
  def index
    @projects = current_user&.projects
  end

  def show
    @project = current_user.projects.find(params[:id])
  end

  def new
    @project = current_user.projects.new
  end

  def create
    @project = current_user.projects.create!(project_params)
    redirect_to projects_url, notice: "Project was successfully created."
  end

  def edit
    @project = current_user.projects.find(params[:id])
  end

  def update
    @project = current_user.projects.find(params[:id])
    @project.update_attributes!(project_params)
    redirect_to projects_url, notice: "Project was successfully updated."
  end

  def destroy
    current_user.projects.destroy(params[:id])
    redirect_to projects_url, notice: "Project was successfully destroyed."
  end

  private

  def project_params
    params.require(:project).permit!
  end  
end
