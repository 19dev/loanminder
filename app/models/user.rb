class User < ActiveRecord::Base
  has_many :loans 
  
  def self.create_with_omniauth(auth)
    create! do |user|
      user.provider = auth["provider"]
      user.uid = auth["uid"]
      user.name = auth["info"]["name"]
      user.token = auth['credentials']['token'] 
      user.secret = auth['credentials']['secret'] 
      #TODO add twitter email!!!
      #user.email = auth["info"]["email"]
    end
  end
  
  def self.where_by_provider(provider = '')
      User.where(['provider  = ?', provider])
    end

    def self.where_by_provider_and_user(provider = '', user=0)
       User.where(['provider  = ? and user_id = ?', provider, user])
     end

    def self.where_by_name(name = '')
      User.where(['name = ?', name])
    end
end
