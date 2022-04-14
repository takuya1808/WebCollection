class WebCollectionsController < ApplicationController
  def index
  end

  def about
  end

  def show
    @collection = Collection.find(params[:id])
  end

  def new
    @collection = Collection.new
  end

  def create
    @collection = Collection.new(collection_params)
    if @collection.save
      flash[:success] = "collection を追加"
      redirect_to root_url
    else
      render 'new'
    end
  end

  def edit
  end

  private
    
    def collection_params
      params.require(:collection).permit(:title, :url)
    end
end
