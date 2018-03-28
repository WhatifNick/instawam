class ImagepostsController < ApplicationController
  before_action :set_imagepost, only: [:show, :edit, :update, :destroy]

  # GET /imageposts
  # GET /imageposts.json
  def index
    @imageposts = Imagepost.all
  end

  # GET /imageposts/1
  # GET /imageposts/1.json
  def show
  end

  # GET /imageposts/new
  def new
    @imagepost = Imagepost.new
  end

  # GET /imageposts/1/edit
  def edit
  end

  # POST /imageposts
  # POST /imageposts.json
  def create
    @imagepost = Imagepost.new(imagepost_params)
    @imagepost.user = current_user

    respond_to do |format|
      if @imagepost.save
        format.html { redirect_to @imagepost, notice: 'Imagepost was successfully created.' }
        format.json { render :show, status: :created, location: @imagepost }
      else
        format.html { render :new }
        format.json { render json: @imagepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /imageposts/1
  # PATCH/PUT /imageposts/1.json
  def update
    respond_to do |format|
      if @imagepost.update(imagepost_params)
        format.html { redirect_to @imagepost, notice: 'Imagepost was successfully updated.' }
        format.json { render :show, status: :ok, location: @imagepost }
      else
        format.html { render :edit }
        format.json { render json: @imagepost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /imageposts/1
  # DELETE /imageposts/1.json
  def destroy
    @imagepost.destroy
    respond_to do |format|
      format.html { redirect_to imageposts_url, notice: 'Imagepost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_imagepost
      @imagepost = Imagepost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def imagepost_params
      params.require(:imagepost).permit(:image_url, :user_id, :caption, :image)
    end
end
