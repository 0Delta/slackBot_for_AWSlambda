require 'slack-ruby-client'
require 'json'
TOKEN = 'slack-token'

def main()
  Slack.configure do |conf|
    p 'set token'
    conf.token = TOKEN
  end

  client = Slack::Web::Client.new
  p client.auth_test

  client.chat_postMessage(channel: 'CCXPDQY13', text: 'Hello World', as_user: true)

end

main