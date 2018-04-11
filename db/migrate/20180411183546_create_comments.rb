class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
    	t.text :comment
    	t.datetime :created_at
    	t.datetime :updated_at

    end
  end
end
