class Admin::ProductsController < Admin::Base

	def top
	end

	def new
		@product = Product.new
	end

	def create
		product = Product.new(product_params)
		product.save
		redirect_to 'admin_product_path(product)'
	end

	def index
	end

	def show
		@product = Product.find(params[:id])
	end

	def edit
	end

	def update
	end


	private
	def product_params
		params.require(:product).permit(:name, :introduction, :price)
	end

end
