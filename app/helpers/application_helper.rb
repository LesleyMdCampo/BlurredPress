module ApplicationHelper
  def current_user
    if session[:user_id] 
      User.find(session[:user_id])
    end
  end

# Displays wrapped content if a user is logged in.
#
# Returns nothing.
	def user_content(&block)
  	capture(&block) if current_user
	end
# Displays wrapped content if a user is logged out.
#
# Returns nothing.
	def non_user(&block)
		capture(&block) unless current_user
	end

end