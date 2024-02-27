class ProjectsController < ApplicationController
  before_action :require_admin, only: [:new, :create]

  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    project = Project.new(project_params)
    if project.save
      redirect_to project_path(project)
    else
      flash[:message] = "Something went wrong"
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit!
  end

  def require_admin
    render file: "#{Rails.root}/public/404.html" unless current_user?
  end
end