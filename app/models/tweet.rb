class Tweet
  attr_accessor :user, :message

  ALL_MESSAGES = []

  def initialize(user, message)
    @user = user
    @message = message
    ALL_MESSAGES << self
  end

  def self.all
    ALL_MESSAGES
  end

end
