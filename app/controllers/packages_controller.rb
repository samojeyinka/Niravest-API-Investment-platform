class PackagesController < ApplicationController
  before_action :set_package, only: %i[ show update destroy ]

  # GET /packages
  def index
    @packages = Package.all

    render json: @packages
  end

  # GET /packages/1
  def show
    render json: @package
  end

  # POST /packages
  def create
    @package = Package.new(package_params)

    if @package.save
      render json: @package, status: :created, location: @package
    else
      render json: @package.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /packages/1
  def update
    if @package.update(package_params)
      render json: @package
    else
      render json: @package.errors, status: :unprocessable_entity
    end
  end

  # DELETE /packages/1
  def destroy
    @package.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_package
      @package = Package.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def package_params
      params.require(:package).permit(:name, :duration, :daily_profits, :total_profits, :price, :active)
    end
end
