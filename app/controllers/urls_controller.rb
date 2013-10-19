class UrlsController < ApplicationController
  def index
		@urls = Url.all
		render :index #this is not needed, but I'll include it so that I learn it's being done even if I don't type it.
	end
	
	def show
			@url = Url.find(params[:id])
	end

	def new
		
	end

  def redirectors
  	hash_code = params[:hash_code]
  	url = Url.find_by_hash_code(hash_code)
  	redirect_to url.link
  end

  def edit
  	@url = Url.find(params[:id])
  end

  def update
  	url = Url.find(params[:id])
  	url.update_attributes(link: params[:url])
  	redirect_to url_path(url.id)
  end

  def preview
  	@url = Url.find_by_hash_code(hash_code: params[:hash_code])
  	render :show
  end

  def create
		rand_nums = rand(10000)
		url = Url.create(:link => params[:url], :hash_code => rand_nums)
		redirect_to url_path(url.id)
	end

end
