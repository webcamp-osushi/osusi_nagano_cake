class Admin::GenresController < Admin::Base

	def create
		genre = Genre.new(genre_params)
		genre.save
		redirect_to("/admin/genres")
	end

	def index
		@genre = Genre.new
		@genres = Genre.all
	end

	def edit
		@genre = Genre.find(params[:id])
	end

	def update
		@genre = Genre.find(params[:id])
		genre.update(genre_params)
		redirect_to("/admin/genres")
	end

	private
	def genre_params
		 params.require(:genre).permit(:name, :is_active)
		end

end
