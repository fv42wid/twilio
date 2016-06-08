class NotificationsController < ApplicationController

  skip_before_action :verify_authenticity_token

  def notify
    account_sid = 'AC10359f57b2620702bd577a10d3edd629'
    auth_token = '40172e80f552dbca04ba1a0e0268f4ff'
    @client = Twilio::REST::Client.new account_sid, auth_token
    @client.account.messages.create({
                                      :from => '+13024070472',
                                      :to => '6103687546',
                                      :body => 'learn to send SMS'
                                      })
  end

end
