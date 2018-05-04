class CreateCasters < ActiveRecord::Migration[5.1]
  def change
    create_table :casters do |t|
    	t.string :first_name
    	t.string :last_name
    	t.string :email
    	t.string :phone_number
    	t.string :shoe_size
    	t.string :cloth_size
    	t.time "created_at"
    	t.time "updated_at"
    end
  end
end
