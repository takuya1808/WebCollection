class WebCollectionsController < ApplicationController
  def index
  end

  def about
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
  end

  def edit
  end
end
