class User < ApplicationRecord

#  def self.create_with_omniauth(auth)
#    create! do |user|
#      user.provider = auth['provider']
#      user.uid = auth['uid']
#      if auth['info'] 
#         user.name = auth['info']['name'] || ""
#         user.profile_image = auth['info']['image'] || ""
#      end
#    end
#  end
    
    def self.create_with_omniauth(auth)
        create! do |user|
            user.provider = auth['provider']
            user.uid = auth['uid']
            if auth['info'] 
                user.first_name = auth['info']['first_name'] || ""
                user.last_name  = auth['info']['last_name'] || ""
                user.email      = auth['info']['email'] || ""
#                user.birthday   = auth['info']['birthday'] || ""
                user.profile_image = auth['info']['image'] || ""
            end
            if auth['extra']
                user.birthday   = auth['extra']['raw_info']['birthday'] || ""
                user.gender = auth['extra']['raw_info']['gender'] || ""
                user.link   = auth['extra']['raw_info']['link'] || ""
            end
        end
    end

end
