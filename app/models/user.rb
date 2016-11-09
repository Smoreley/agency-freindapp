class User < ApplicationRecord

  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth['provider']
      user.uid = auth['uid']
      if auth['info'] 
         user.name = auth['info']['name'] || ""
         user.profile_image = auth['extra']['raw_info']['profile_image_url_https'] || ""
      end
    end
  end

end
