# == Schema Information
# Schema version: 20110322233729
#
# Table name: users
#
#  id                 :integer         not null, primary key
#  email              :string(255)
#  encrypted_password :string(255)
#  created_at         :datetime
#  updated_at         :datetime
#  salt               :string(255)
#

class User < ActiveRecord::Base
  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :password,  :presence => true,
                        :confirmation => true,
                        :length => {:within => 6..10},
                        :if => :password_required?

  validates :password_confirmation,
            :presence => true,
            :if => :password_required?

  validates :email, :presence => true,
                    :length => {:within => 4..40},
                    :uniqueness => {:case_sensitive => false},
                    :format => {:with => email_regex}


  attr_accessor :password
  attr_protected :id, :salt
  attr_accessible :email, :password, :password_confirmation

  before_save :save_encrypt_password

  def self.authenticate(email, pass)
    u=find(:first, :conditions=>["email = ?", email])
    return nil if u.nil?
    return u if u.valid_password?(pass)
    nil
  end

  def valid_password?(submitted_password)
    encrypted_password == encrypt(salt, submitted_password)
  end

  private
  def password_required?
    !persisted? || !password.nil? || !password_confirmation.nil?
  end
  def save_encrypt_password
    self.salt = make_salt if salt.nil?
    self.encrypted_password = encrypt(salt, password)
  end
  def encrypt(string1, string2)
    secure_hash("#{string1}--#{string2}")
  end
  def make_salt
    encrypt(Time.now.utc,encrypted_password)
  end
  def secure_hash(string)
    Digest::SHA2.hexdigest(string)
  end

end

