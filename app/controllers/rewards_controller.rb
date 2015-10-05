class RewardsController < ApplicationController
		before_action :authenticate_user! 
		before_action :set_project

		def new 
			@rewards = @project.rewards.build 
			respond_to do |format | 
				format.html 
			end

		end

		def create 
			@rewards = @project.rewards.build 
			if @rewards.save(project_params) 
			end
		end

		def edit 
		end

		def update 
		end

		def destroy 
		end

		private 

		def set_project 
			@project = Project.find(params[:project_id])
		end

end
