require 'rails'
require 'httparty'

module IonicPush
  #ionic api token
  mattr_accessor :ionic_api_token
  @@ionic_api_token = ""

  # Registered application if for the ionic platform
  mattr_accessor :ionic_application_id
  @@ionic_application_id = ""

  # Private key for sending information
  mattr_accessor :ionic_api_key
  @@ionic_api_key = ""

  # Ionic security profile
  mattr_accessor :ionic_profile
  @@ionic_profile = ""
  # API URL
  mattr_accessor :ionic_api_url
  @@ionic_api_url = "https://api.ionic.io/push/notifications"

  def self.setup
    yield self
  end
end

require 'ionic_push/push_service'
