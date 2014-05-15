class User < ActiveRecord::Base
  has_many :microposts, dependent: :destroy
	  has_secure_password
	  before_save { email.downcase! }
	  before_create :create_remember_token
  
  def User.new_remember_token
    SecureRandom.urlsafe_base64
  end

  def User.hash(token)
    Digest::SHA1.hexdigest(token.to_s)
  end
def feed
  microposts
end
  
  private

    def create_remember_token
      self.remember_token = User.hash(User.new_remember_token)
    end
end

validates :name, :presence => true    
validates :email, :presence => true
has_attached_file :pic, :styles => 
{ :medium => "300x300>", :thumb => "100x100>" }
has_attached_file :attach
end