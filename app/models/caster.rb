class Caster<ApplicationRecord
	validates :first_name, presence:true
	validates :last_name, presence:true
	validates :email, presence:true, length: {maximum: 105},
	uniqueness: {case_sensitive: false}
	validates :phone_number, presence:true
	validates :shoe_size, presence:true
	validates :cloth_size, presence:true

end