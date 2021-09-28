class User < ActiveRecord::Base
  has_many :client_applications
  has_many :tokens, -> { includes(:client_application) },
  :class_name => "Oauth2Token"

end
