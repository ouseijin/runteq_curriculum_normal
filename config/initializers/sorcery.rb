# The first thing you need to configure is which modules you need in your app.
# The default is nothing which will include only core features (password encryption, login/logout).
#
# Available submodules are: :user_activation, :http_basic_auth, :remember_me,
# :reset_password, :session_timeout, :brute_force_protection, :activity_logging,
# :magic_login, :external
Rails.application.config.sorcery.submodules = [:reset_password]

# Here you can configure each submodule's features.
Rails.application.config.sorcery.configure do |config|
  # -- core --
  # What controller action to call for non-authenticated users. You can also
  # override the 'not_authenticated' method of course.
  # Default: `:not_authenticated`
  #
  # config.not_authenticated_action =

  # When a non logged-in user tries to enter a page that requires login, save
  # the URL he wants to reach, and send him there after login, using 'redirect_back_or_to'.
  # Default: `true`
  #
  # config.save_return_to_url =

  # Set domain option for cookies; Useful for remember_me submodule.
  # Default: `nil`
  #
  # config.cookie_domain =

  # Allow the remember_me cookie to be set through AJAX
  # Default: `true`
  #
  # config.remember_me_httponly =

  # Set token randomness. (e.g. user activation tokens)
  # The length of the result string is about 4/3 of `token_randomness`.
  # Default: `15`
  #
  # config.token_randomness =

  # -- session timeout --
  # How long in seconds to keep the session alive.
  # Default: `3600`
  #
  # config.session_timeout =

  # Use the last action as the beginning of session timeout.
  # Default: `false`
  #
  # config.session_timeout_from_last_action =

  # Invalidate active sessions. Requires an `invalidate_sessions_before` timestamp column
  # Default: `false`
  #
  # config.session_timeout_invalidate_active_sessions_enabled =

  # -- http_basic_auth --
  # What realm to display for which controller name. For example {"My App" => "Application"}
  # Default: `{"application" => "Application"}`
  #
  # config.controller_to_realm_map =

  # -- activity logging --
  # Will register the time of last user login, every login.
  # Default: `true`
  #
  # config.register_login_time =

  # Will register the time of last user logout, every logout.
  # Default: `true`
  #
  # config.register_logout_time =

  # Will register the time of last user action, every action.
  # Default: `true`
  #
  # config.register_last_activity_time =

  # -- external --
  # What providers are supported by this app
  # i.e. [:twitter, :facebook, :github, :linkedin, :xing, :google, :liveid, :salesforce, :slack, :line].
  # Default: `[]`
  #
  # config.external_providers =

  # You can change it by your local ca_file. i.e. '/etc/pki/tls/certs/ca-bundle.crt'
  # Path to ca_file. By default use a internal ca-bundle.crt.
  # Default: `'path/to/ca_file'`
  #
  # config.ca_file =

  # Linkedin requires r_emailaddress scope to fetch user's email address.
  # You can skip including the email field if you use an intermediary signup form. (using build_from method).
  # The r_emailaddress scope is only necessary if you are using the create_from method directly.
  #
  # config.linkedin.key = ""
  # config.linkedin.secret = ""
  # config.linkedin.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=linkedin"
  # config.linkedin.user_info_mapping = {
  #   first_name: 'localizedFirstName',
  #   last_name:  'localizedLastName',
  #   email:      'emailAddress'
  # }
  # config.linkedin.scope = "r_liteprofile r_emailaddress"
  #
  #
  # For information about XING API:
  # - user info fields go to https://dev.xing.com/docs/get/users/me
  #
  # config.xing.key = ""
  # config.xing.secret = ""
  # config.xing.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=xing"
  # config.xing.user_info_mapping = {first_name: "first_name", last_name: "last_name"}
  #
  #
  # Twitter will not accept any requests nor redirect uri containing localhost,
  # Make sure you use 0.0.0.0:3000 to access your app in development
  #
  # config.twitter.key = ""
  # config.twitter.secret = ""
  # config.twitter.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=twitter"
  # config.twitter.user_info_mapping = {:email => "screen_name"}
  #
  # config.facebook.key = ""
  # config.facebook.secret = ""
  # config.facebook.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=facebook"
  # config.facebook.user_info_path = "me?fields=email"
  # config.facebook.user_info_mapping = {:email => "email"}
  # config.facebook.access_permissions = ["email"]
  # config.facebook.display = "page"
  # config.facebook.api_version = "v2.3"
  # config.facebook.parse = :json
  #
  # config.instagram.key = ""
  # config.instagram.secret = ""
  # config.instagram.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=instagram"
  # config.instagram.user_info_mapping = {:email => "username"}
  # config.instagram.access_permissions = ["basic", "public_content", "follower_list", "comments", "relationships", "likes"]
  #
  # config.github.key = ""
  # config.github.secret = ""
  # config.github.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=github"
  # config.github.user_info_mapping = {:email => "name"}
  # config.github.scope = ""
  #
  # config.paypal.key = ""
  # config.paypal.secret = ""
  # config.paypal.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=paypal"
  # config.paypal.user_info_mapping = {:email => "email"}
  #
  # config.wechat.key = ""
  # config.wechat.secret = ""
  # config.wechat.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=wechat"
  #
  # For Auth0, site is required and should match the domain provided by Auth0.
  #
  # config.auth0.key = ""
  # config.auth0.secret = ""
  # config.auth0.callback_url = "https://0.0.0.0:3000/oauth/callback?provider=auth0"
  # config.auth0.site = "https://example.auth0.com"
  #
  # config.google.key = ""
  # config.google.secret = ""
  # config.google.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=google"
  # config.google.user_info_mapping = {:email => "email", :username => "name"}
  # config.google.scope = "https://www.googleapis.com/auth/userinfo.email https://www.googleapis.com/auth/userinfo.profile"
  #
  # For Microsoft Graph, the key will be your App ID, and the secret will be your app password/public key.
  # The callback URL "can't contain a query string or invalid special characters"
  # See: https://docs.microsoft.com/en-us/azure/active-directory/active-directory-v2-limitations#restrictions-on-redirect-uris
  # More information at https://graph.microsoft.io/en-us/docs
  #
  # config.microsoft.key = ""
  # config.microsoft.secret = ""
  # config.microsoft.callback_url = "http://0.0.0.0:3000/oauth/callback/microsoft"
  # config.microsoft.user_info_mapping = {:email => "userPrincipalName", :username => "displayName"}
  # config.microsoft.scope = "openid email https://graph.microsoft.com/User.Read"
  #
  # config.vk.key = ""
  # config.vk.secret = ""
  # config.vk.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=vk"
  # config.vk.user_info_mapping = {:login => "domain", :name => "full_name"}
  # config.vk.api_version = "5.71"
  #
  # config.slack.callback_url = "http://0.0.0.0:3000/oauth/callback?provider=slack"
  # config.slack.key = ''
  # config.slack.secret = ''
  # config.slack.user_info_mapping = {email: 'email'}
  #
  # To use liveid in development mode you have to replace mydomain.com with
  # a valid domain even in development. To use a valid domain in development
  # simply add your domain in your /etc/hosts file in front of 127.0.0.1
  #
  # config.liveid.key = ""
  # config.liveid.secret = ""
  # config.liveid.callback_url = "http://mydomain.com:3000/oauth/callback?provider=liveid"
  # config.liveid.user_info_mapping = {:username => "name"}

  # For information about JIRA API:
  # https://developer.atlassian.com/display/JIRADEV/JIRA+REST+API+Example+-+OAuth+authentication
  # To obtain the consumer key and the public key you can use the jira-ruby gem https://github.com/sumoheavy/jira-ruby
  # or run openssl req -x509 -nodes -newkey rsa:1024 -sha1 -keyout rsakey.pem -out rsacert.pem to obtain the public key
  # Make sure you have configured the application link properly

  # config.jira.key = "1234567"
  # config.jira.secret = "jiraTest"
  # config.jira.site = "http://localhost:2990/jira/plugins/servlet/oauth"
  # config.jira.signature_method =  "RSA-SHA1"
  # config.jira.private_key_file = "rsakey.pem"

  # For information about Salesforce API:
  # https://developer.salesforce.com/signup &
  # https://www.salesforce.com/us/developer/docs/api_rest/
  # Salesforce callback_url must be https. You can run the following to generate self-signed ssl cert:
  # openssl req -new -newkey rsa:2048 -sha1 -days 365 -nodes -x509 -keyout server.key -out server.crt
  # Make sure you have configured the application link properly
  # config.salesforce.key = '123123'
  # config.salesforce.secret = 'acb123'
  # config.salesforce.callback_url = "https://127.0.0.1:9292/oauth/callback?provider=salesforce"
  # config.salesforce.scope = "full"
  # config.salesforce.user_info_mapping = {:email => "email"}

  # config.line.key = ""
  # config.line.secret = ""
  # config.line.callback_url = "http://mydomain.com:3000/oauth/callback?provider=line"
  # config.line.scope = "profile"
  # config.line.bot_prompt = "normal"
  # config.line.user_info_mapping = {name: 'displayName'}

  # For information about Discord API
  # https://discordapp.com/developers/docs/topics/oauth2
  # config.discord.key = "xxxxxx"
  # config.discord.secret = "xxxxxx"
  # config.discord.callback_url = "http://localhost:3000/oauth/callback?provider=discord"
  # config.discord.scope = "email guilds"

  # For information about Battlenet API
  # https://develop.battle.net/documentation/guides/using-oauth
  # config.battlenet.site = "https://eu.battle.net/" #See Website for other Regional Domains
  # config.battlenet.key = "xxxxxx"
  # config.battlenet.secret = "xxxxxx"
  # config.battlenet.callback_url = "http://localhost:3000/oauth/callback?provider=battlenet"
  # config.battlenet.scope = "openid"
  # --- user config ---
  config.user_config do |user|
    user.reset_password_mailer = UserMailer
    
    user.stretches = 1 if Rails.env.test?

  end

  # This line must come after the 'user config' block.
  # Define which model authenticates with sorcery.
  config.user_class = 'User'
end
