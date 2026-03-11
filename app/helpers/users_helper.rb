module UsersHelper
  def gravatar_for(user,options={size: 80})
    gravtar_id=Digest::MD5::hexdigest(user.email.downcase)
    size=options[:size]
    gravatar_url="http://gravatar.com/avatar/#{gravtar_id}?s=#{size}"
    image_tag(gravatar_url, alt:user.name)
  end
end
