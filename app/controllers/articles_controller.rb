class ArticlesController < ApplicationController
	before_action :set_article, only: [:edit, :update, :destroy, :show]

	def index
		@articles=Article.all

	end
	
	def new
		@article=Article.new

	end

	def create
		#render plain: params[:article].inspect
		@article=Article.new(article_params)
		#@article.save
		#redirect_to_article_path(@article)

		if @article.save
			#do something
			flash[:notice] ="Article was saved successfully"
			redirect_to article_path(@article)
		else
			render 'new'
		end

	end

	def show
		

	end

	def destroy
		
		@article.destroy
		flash[:notie]="Article successfully Deleted"
		redirect_to articles_path
		

		

	end

	def edit
		
	end

	def update
		
		if @article.update(article_params)
			flash[:notice]="Article was updated successfully"
			redirect_to article_path(@article)
		else
			render 'edit'
		end
	end

	private
		def set_article
			@article= Article.find(params[:id])
		end
		def article_params
			params.require(:article).permit(:title, :description)
		end


end
