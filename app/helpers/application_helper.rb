module ApplicationHelper
  def current_user
    session[:user]
  end

  def visitor
  	session[:logged_out]
  end

# Displays wrapped content if a user is logged in.
#
# Returns nothing.
	def user_content(&block)
  	capture(&block) if current_user
	end

	def non_user(&block)
		capture(&block) if visitor
	end

end