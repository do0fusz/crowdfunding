class PledgesController < ApplicationController
	before_action :authenticate_user!
	before_action :set_project 
	before_action :set_reward 

	def index 
		@pledges = @project.pledegs 
		respond_to do | format | 
			format.html
		end
	end


	def new
		@plegde = current_user.pledges.build
		@rewards = @project.rewards 
		respond_to do | format | 
			format.html 
		end
	end


	private 

	def set_project 
		@project = Project.find(params[:project_id])
	end

	def set_reward
		@reward = @project.rewards.find_by_id(params[:reward_id])
	end

end
