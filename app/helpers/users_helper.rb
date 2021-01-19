module UsersHelper
  #勤怠基本情報を指定のフォーマットで返します。 
  def time_format(time)  #format_basic_info(time) 
    format("%.2f", ((time.hour * 60) + time.min) / 60.0)
  end
  
  # 渡されたユーザーのGravatar画像を返す
  def gravatar_for(user, options = { size: 80 })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end
