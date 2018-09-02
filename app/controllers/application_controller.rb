class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def is_storyteller?
    if current_user.is_storyteller
      return true
    end

    return false
  end
end
