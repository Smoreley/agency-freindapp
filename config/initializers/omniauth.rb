#Twitter
#Rails.application.config.middleware.use OmniAuth::Builder do
#  provider :twitter, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret
#end

#FaceBook
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, Rails.application.secrets.omniauth_provider_key, Rails.application.secrets.omniauth_provider_secret, scope: 'public_profile,email', info_fields: 'id,name,link,gender,first_name,last_name,email,birthday'
end
