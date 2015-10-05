class Pledge < ActiveRecord::Base
	belongs_to :user
	belongs_to :reward 

	before_validation :generate_uuid!, :on => :create 
	validates_presence_of :name, :address, :city, :country, :postal_code, :ammount, :user_ids

	private 
	
	def generate_uuid!
		begin 
			self.uuid = SecureRandom.hex(16)
		end while Plegde.find_by(:uuid => self.uuid).prensent? 
	end

end
