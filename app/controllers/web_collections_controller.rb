class WebCollectionsController < ApplicationController
  before_action :user_signed_in?, only: [:new, :create, :edit, :update, :destroy]
  before_action :admin_user, only: [:new, :create, :edit, :update, :destroy]

  def index
    @collections = Collection.all
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
    @collection = Collection.find(params[:id])
  end

  def update
    @collection = Collection.find(params[:id])
    if @collection.update(collection_params)
      flash[:success] = "collection を変更"
      redirect_to root_url
    else
      render 'edit'
    end
  end

  def destroy
    Collection.find(params[:id]).destroy
    flash[:success] = "Collection deleted"
    redirect_to root_url
  end

  private
    
    def collection_params
      params.require(:collection).permit(:title, :url, :image)
    end

    def admin_user
      if !current_user&.admin?
        redirect_to root_url
      end
    end
end
