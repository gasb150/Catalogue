class ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy spread ]

  # GET /products or /products.json
  def index
    @products = Product.all
    respond_to do |format|1
       format.xlsx{ set_attachment_name "sites #{Time.now.utc.strftime('%Y%M%d%H%M%S')}.xlsx"  }
     end
   
  end

  def spread

  end

  # GET /products/1 or /products/1.json
  def show
  end

  # def export 
      

  #     require ‘spreadsheet’                    
     
  #     @products = Product.all
  #        respond_to do |format|

  #    book = Spreadsheet::Workbook.new  
     
  #    sheet1 = book.create_worksheet      
  #    @products.each do |product|
  #     sheet1[product.id,1]=params[product][:name]
  #   end
  #    #insert data in required sheet([row][column]) its starts from [0][0]
     
  #      book.write "#{Rails.root}/tmp/test.xls"              # commit the write
     
  # end
  # end
 

  
  #  def export
  #   @products = Product.all
  #   respond_to do |format|
  #     format.html
  #     format.xlsx { 
  #       response.headers['Content-Disposition'] = 'attachment; filename="export.xlsx"'
  #     }
  #   end

  #  end
  #  def export
  #    @wb.add_worksheet(name: "Basic") do |sheet|
  #      sheet.add_row get_header 
  #      @products.each do |pt|
  #        sheet.add_row [pt.name]
  #      end
  #    end
  #    @p.serialize("#{Rails.root}/tmp/basic.xlsx")
  #    send_file("#{Rails.root}/tmp/basic.xlsx", filename: "Basic.xlsx", type: "application/xlsx")
  #  end

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

    # Use callbacks to share common setup or constraints between actions.
    # def set_product
    #   @product = Product.find(params[:id])
    # end

    # def get_header
    #   ["Name"]
    # end

    # Only allow a list of trusted parameters through.
    def product_params
      params.require(:product).permit(:name, :description, :category_id, :iva, :price)
    end

    def set_attachment_name(name)
      escaped = URI.encode(name)
      response.headers['Content-Disposition'] = "attachment; filename*=UTF-8''#{escaped}"
    end
end
