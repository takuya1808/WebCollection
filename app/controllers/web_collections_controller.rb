class WebCollectionsController < ApplicationController
  before_action :set_web_collection, only: %i[ show edit update destroy ]

  # GET /web_collections or /web_collections.json
  def index
    @web_collections = WebCollection.all
  end

  # GET /web_collections/1 or /web_collections/1.json
  def show
  end

  # GET /web_collections/new
  def new
    @web_collection = WebCollection.new
  end

  # GET /web_collections/1/edit
  def edit
  end

  # POST /web_collections or /web_collections.json
  def create
    @web_collection = WebCollection.new(web_collection_params)

    respond_to do |format|
      if @web_collection.save
        format.html { redirect_to web_collection_url(@web_collection), notice: "Web collection was successfully created." }
        format.json { render :show, status: :created, location: @web_collection }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @web_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /web_collections/1 or /web_collections/1.json
  def update
    respond_to do |format|
      if @web_collection.update(web_collection_params)
        format.html { redirect_to web_collection_url(@web_collection), notice: "Web collection was successfully updated." }
        format.json { render :show, status: :ok, location: @web_collection }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @web_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /web_collections/1 or /web_collections/1.json
  def destroy
    @web_collection.destroy

    respond_to do |format|
      format.html { redirect_to web_collections_url, notice: "Web collection was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_web_collection
      @web_collection = WebCollection.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def web_collection_params
      params.fetch(:web_collection, {})
    end
end
