class ApplicationController < ActionController::Base
  include DeviseWhitelist 
  include SetSource

  def current_user
  	super || OpenStruct.new(name: "Human Test", first_name: "Human", last_name: "Test", email: "human@example.com")
  end
end
