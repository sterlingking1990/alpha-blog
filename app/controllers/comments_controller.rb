class CommentsController <ApplicationRecord


def new
	@comment = Comment.new
end

def create
	@comment = Comment.new(comment_params)
	if @comment.save
		flash[:notice]="Comment was created successfully"
		redirect_to comment_path(@comment)
	else
		render 'new'

end

private 
	def comment_params
		params.require(:comment).permit(:article_id, :comment)

	end
	
end


end
