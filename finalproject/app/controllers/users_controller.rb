class UsersController < ApplicationController
	before_filter :authenticate_user!

	def index
		@users = User.all
	end

	def show
    @user = User.find(params[:id])
 #    if current_user.profile_type == 'volunteer'
 #      @volunteer = Volunteer.find_by_user_id(current_user.id)
 #      redirect_to 'volunteer/show'
 #    else
 #      @organization = Organization.find_by_user_id(current_user.id)
 #      redirect_to 'organization/show'
	# end
end