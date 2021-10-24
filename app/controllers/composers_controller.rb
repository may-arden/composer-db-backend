class ComposersController < ApplicationController
  before_action :set_composer, only: %i[ show edit update destroy ]

  # GET /composers or /composers.json
  def index
    @composers = Composer.all

    render json: @composers 
  end

  # GET /composers/1 or /composers/1.json
  def show
    render json: @composer 
  end

  # GET /composers/new
  def new
    @composer = Composer.new
  end

  # GET /composers/1/edit
  def edit
  end

  # POST /composers or /composers.json
  def create
    @composer = Composer.new(composer_params)

      if @composer.save
        render json: @composer, status: :created, location: @category 
      else
        render json: @category.errors, status: :unprocessable_entity
      end
  end

  # PATCH/PUT /composers/1 or /composers/1.json
  def update

      if @composer.update(composer_params)
        render json: @composer 
      else
        render json: @composer.errors, status: :unprocessable_entity
      end

  end

  # DELETE /composers/1 or /composers/1.json
  def destroy
    @composer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_composer
      @composer = Composer.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def composer_params
      params.require(:composer).permit(:name, :description, :image_src, :category_id)
    end
end
