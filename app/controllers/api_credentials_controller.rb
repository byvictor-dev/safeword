class ApiCredentialsController < ApplicationController

  before_action :authenticate_user!

  def index
    @api_token = current_user.api_token
    @base_uri = ENV['BASE_URI']
  end

  def update
    User.where(id: current_user.id).update_all('api_token = uuid_generate_v4()')
    redirect_to api_credentials_path and return
  end
end
