class CastersController<ApplicationController
	before_action :set_caster_profile, only: [:edit, :update, :destroy, :show]

	def index
		@caster_profiles=Caster.all


	end

	def new
		@caster_profile=Caster.new

	end

	def create
		#render plain: params[:article].inspect
		@article=Article.new(article_params)
		#@article.save
		#redirect_to_article_path(@article)

		if @article.save
			#do something
			flash[:notice] ="Article was saved successfully"
			redirect_to articles_path(@article)
		else
			render 'new'
		end

	end

	private 
		def set_caster_profile
			@caster_profile = Caster.find(params[:id])

		end

		def caster_profile_params
			params.require(:caster_profile).permit(:first_name,:last_name,:email,:phone_number,:shoe_size,:cloth_size)
		end


end