module CurrentUserConcern
	extend ActiveSupport::CurrentUserConcern

  def current_user
    super || guest_user
  end

  def guest_user
    OpenStruct.new(name: "Human Test",
                  first_name: "Human",
                  last_name: "Test", 
                  email: "human@example.com"
                  )
  end
end