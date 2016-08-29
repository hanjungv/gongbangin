CarrierWave.configure do |config|
  config.fog_credentials = {
      provider: 'AWS', # required
      aws_access_key_id: 'AKIAIDZCPULGFUMHEM4A', # required
      aws_secret_access_key: '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', # required
      region: 'ap-northeast-2', # optional, defaults to 'us-east-1'
      endpoint: 'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory = 'test-gongbang' # required
end
