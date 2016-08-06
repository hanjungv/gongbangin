CarrierWave.configure do |config|
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'AKIAJFK6MLMHCNTAGP7A',                        # required
      aws_secret_access_key: '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',                        # required
      region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
      endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'test-gongbang'                          # required
  config.fog_public     = true                                        # optional, defaults to true
end