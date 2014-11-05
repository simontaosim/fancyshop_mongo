class ProductCatesController < ApplicationController
  before_action :set_product_cate, only: [:show, :edit, :update, :destroy]

  # GET /product_cates
  # GET /product_cates.json
  def index
    @product_cates = ProductCate.all
  end

  # GET /product_cates/1
  # GET /product_cates/1.json
  def show
  end

  # GET /product_cates/new
  def new
    @product_cate = ProductCate.new
  end

  # GET /product_cates/1/edit
  def edit
  end

  # POST /product_cates
  # POST /product_cates.json
  def create
    @product_cate = ProductCate.new(product_cate_params)

    respond_to do |format|
      if @product_cate.save
        format.html { redirect_to @product_cate, notice: 'Product cate was successfully created.' }
        format.json { render :show, status: :created, location: @product_cate }
      else
        format.html { render :new }
        format.json { render json: @product_cate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_cates/1
  # PATCH/PUT /product_cates/1.json
  def update
    respond_to do |format|
      if @product_cate.update(product_cate_params)
        format.html { redirect_to @product_cate, notice: 'Product cate was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_cate }
      else
        format.html { render :edit }
        format.json { render json: @product_cate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_cates/1
  # DELETE /product_cates/1.json
  def destroy
    @product_cate.destroy
    respond_to do |format|
      format.html { redirect_to product_cates_url, notice: 'Product cate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_cate
      @product_cate = ProductCate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_cate_params
      params.require(:product_cate).permit(:name, :product_cate_id)
    end
end
