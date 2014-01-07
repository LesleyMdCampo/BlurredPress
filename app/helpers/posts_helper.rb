module PostsHelper

	# Generate a link to a post for the side nav.
	#
	# post         - The Post to link to.
	# current_post - The Post currently being viewed.
	#
	# Returns the markup for a line item in the side nav.
	def post_link(post, current_post)
	  content_tag :li, class: ('active' if post == current_post) do
	    link_to post.title, post
	  end
	end
end
