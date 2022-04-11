class WebCollectionsController < ApplicationController
  def index
  end

  def about
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
    @collection = Collection.new(collection_params)
  end

  def create
  end

  def edit
  end

  private
    
    def collection_params
      params.permit(:title, :url)
    end
end
