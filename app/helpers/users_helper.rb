module UsersHelper
  def gravatar_for(user, options = { size: 80 })
  gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
  size = options[:size]
  gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
  image_tag(gravatar_url, alt: user.name, class: "gravatar")
end

def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

end
