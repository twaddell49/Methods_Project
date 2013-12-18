module CriticsHelper
	def avatar_for(critic)
		gravatar_id = Digest::MD5::hexdigest(critic.email.downcase)
		gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}"
		image_tag(gravatar_url, alt: critic.name, class: "gravatar")
	end
end
