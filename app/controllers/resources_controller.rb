class ResourcesController < ApplicationController

  before_filter :authenticate

  def index
    if params[:category_id]
      @category = Category.find(params[:category_id])
      @resources = @category.resources
      render json: @resources, status: :ok
    else
      @resources = Resource.all
      render json: @resources, status: :ok
    end
  end

  def show
    @resource = Resource.find(params[:id])
    render json: @resource
  end

  def create
    @category = Category.find(params[:category_id])
    @resource = Resource.new(resource_params)
    @category.resources << @resource
    if @resource.save
      render json: @resource, status: :created
    else
      render json: @resource.errors, status: :unprocessable_entity
    end
  end

  def update
    @resource = Resource.find(params[:id])
    if @resource.update(resource_params)
      render json: @resource, status: :ok
    else
      render json: @resource, status: :unprocessable_entity
    end
  end

  def destroy
    @resource = Resource.find(params[:id])
    @resource.destroy
    head :no_content
  end

  private
  def resource_params
    params.require(:resource).permit(:id, :title, :url)
  end
end
