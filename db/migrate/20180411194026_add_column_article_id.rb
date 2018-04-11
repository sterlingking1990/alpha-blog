class AddColumnArticleId < ActiveRecord::Migration[5.1]
  def change
  	add_column :comments, :article_id, :integer, limit: 4
  end
end
