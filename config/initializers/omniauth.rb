Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'CBJnyP5Dms5YIRY5TX5E2A', 'DnzhgRWp7eaF7BhEmUFvp9CQsWmZJJSKiZS29dhj8M'
  provider :facebook, '162609797189752', '52c010916afd8a402bfe47c6cfda5ca4'
  
  Twitter.configure do |config|
    config.consumer_key = 'CBJnyP5Dms5YIRY5TX5E2A'
    config.consumer_secret = 'DnzhgRWp7eaF7BhEmUFvp9CQsWmZJJSKiZS29dhj8M'
    #config.oauth_token = '41939896-SaRh3DEWhKP0uZ2GUaxrmnEnkYXlv6kv7QRSu4o79'
    #config.oauth_token_secret = 'mDmnbftSSWNVzVBJx1IGs4WdlTkacqnvDvZp2LynDI'
  end
end