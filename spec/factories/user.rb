FactoryGirl.define do
  factory(:user) do
    current_sign_in_at '2016-06-26T12:43 UTC'
    current_sign_in_ip '127.0.0.1'
    email 'admin@example.com'
    password 'password'
    password_confirmation 'password'
    last_sign_in_at '2016-06-26T12:43 UTC'
    last_sign_in_ip '127.0.0.1'
    provider ''
    remember_created_at ''
    reset_password_sent_at ''
    reset_password_token ''
    sign_in_count 1
    sequence(:uid, 1)
  end
end
