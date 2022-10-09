class ProfilesController < ApplicationController
  def new
  end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id

    respond_to do |format|
      if @profile.save
        format.html { redirect_to root_path, notice: 'Profile created successfully' }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :user_id)
  end
end
