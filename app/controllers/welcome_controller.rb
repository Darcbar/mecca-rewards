class WelcomeController < ApplicationController
  def index
    @club = Club.new
  end

  def create_club
    @club = Club.create(club_params)
    respond_to do |format|
      format.html {redirect_to registered_path}
      format.js
    end
  end

  def registered
  end

  private

  def club_params
    params.require(:club).permit(:club_name, :club_type, :club_website, :member_count, :contact_name, :contact_email)
  end
end
