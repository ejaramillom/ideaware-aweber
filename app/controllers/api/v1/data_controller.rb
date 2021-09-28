class Api::V1::DataController < ApplicationController
  respond_to :json, :xml

  def show
     respond_with ({:super_secret => "oauth_data"})
  end


end
