class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[show edit update destroy]
  before_action :ensure_current_user_is_owner, only: %i[destroy update edit]
  
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

  def set_profile
    @profile = Profile.find(params[:id])
  end

  def ensure_current_user_is_owner
    if current_user != @profile.user
      redirect_back fallback_location: root_url, alert: "You're not authorized for that."
    end
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :user_id)
  end
end
