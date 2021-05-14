class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy spread ]

  # GET /products or /products.json
  def index
    @products = Product.all
    respond_to do |format|
      format.html
       format.xlsx{ set_attachment_name "Prices #{Time.now.utc.strftime('%Y%M%d%H%M%S')}.xlsx"  }
     end
     @categories = Category.all
  end

  def spread

  end

  def show
  end

  # GET /products/new
  def new
    @product = Product.new
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products or /products.json
  def create
    @product = Product.new(product_params)

    respond_to do |format|
      if @product.save
        format.html { redirect_to @product, notice: "Product was successfully created." }
        format.json { render :show, status: :created, location: @product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1 or /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: "Product was successfully updated." }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1 or /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to products_url, notice: "Product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  def load_workbook
    @p = Axlsx::Package.new
    @wb = @p.workbook
    load_styles
  end

  def styles
    @wb.styles do |s|
      @heading = s.add_style aligment: {horizontal: center}, b: true, sz: 18, bg_color: "0066cc", fg_color: "FF"
      @center = s.add_style alignment: {horizontal: :center}, fg_color: "0000FF"
    end
  end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :category_id, :iva, :price)
    end

    def set_product
      @product = Product.find(params[:id])
    end

    def set_attachment_name(name)
      escaped = URI.encode(name)
      response.headers['Content-Disposition'] = "attachment; filename*=UTF-8''#{escaped}"
    end
end
