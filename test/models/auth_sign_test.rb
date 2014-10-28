# secret = "random_test_secret"
# data_to_sign = "joesoap"
# returns 'zEAswdrJ0mrRnwUR9znmuWTyqz4='

require "test_helper"

describe AuthSign do

  let (:secret) { "random_test_secret" }

  let (:to_sign) { "joesoap" }

  before {
    ENV['AWS_SECRET'] = secret
  }

  it 'signs string with key' do
    AuthSign.sign_data(to_sign).must_equal 'zEAswdrJ0mrRnwUR9znmuWTyqz4='
  end

end