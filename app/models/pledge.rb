# == Schema Information
#
# Table name: pledges
#
#  id              :integer          not null, primary key
#  user_id         :integer
#  reward_id       :integer
#  amount          :integer
#  shipping        :decimal(, )
#  expiration_date :date
#  uuid            :string
#  name            :string
#  address         :string
#  city            :string
#  country         :string
#  postal_code     :string
#  status          :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Pledge < ActiveRecord::Base
	belongs_to :user
	belongs_to :reward 

	before_validation :generate_uuid!, :on => :create 
	validates_presence_of :name, :address, :city, :country, :postal_code, :amount, :user_ids

	private 
	
	def generate_uuid!
		begin 
			self.uuid = SecureRandom.hex(16)
		end while Plegde.find_by(:uuid => self.uuid).prensent? 
	end

end
