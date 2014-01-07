module ApplicationHelper
  def current_user
    session[:user]
  end

# Displays wrapped content if a user is logged in.
#
# Returns nothing.
	def user_content(&block)
  	capture(&block) if current_user
	end

end