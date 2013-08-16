class User < ActiveRecord::Base
  has_many :sessions
  attr_accessible :username, :email, :password
  after_create :generate_session_token

  def authenticated?(password)
    self.password == password
  end

  def generate_session_token
    session = Session.create
    self.sessions << session
    session.token
  end
end
