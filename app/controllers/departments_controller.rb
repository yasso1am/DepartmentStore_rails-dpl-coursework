class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :update, :edit, :destroy]

  def index
    @departments = Department.all
  end

  def show
  end
  
  def new
    @department = Department.new
    render :form
  end

  def edit
    render :form
  end

  def create
    @department = Department.new(dept_params)

    if @department.save
      redirect_to @department
    else
      render :form
    end
  end

  def update
    if @department.update(dept_params)
      redirect_to @department
    else
      render :form
    end
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  private

    def set_department
      @department = Department.find(params[:id])
    end

    def dept_params
      params.require(:department).permit(:name)
    end

  end
