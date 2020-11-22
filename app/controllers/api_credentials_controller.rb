class ApiCredentialsController < ApplicationController

  before_action :authenticate_user!

  def index
  end

  def update
    User.where(id: current_user.id).update_all('api_token = uuid_generate_v4()')
    redirect_to api_credentials_path and return
  end
end
