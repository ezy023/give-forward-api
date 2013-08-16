class Session < ActiveRecord::Base
  belongs_to :user
  attr_accessible :token
  before_create :generate_session_token


  def expired?
    self.created_at < 2.hours.ago
  end

  def generate_session_token
    token = []
    20.times { token << ("A".."Z").to_a.sample }
    self.token = token.join
  end

end
