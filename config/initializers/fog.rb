CarrierWave.configure do |config|
  config.fog_provider = 'fog/aws'                        # required
  config.fog_credentials = {
      provider:              'AWS',                        # required
      aws_access_key_id:     'AKIAJYUIT7RPF5GXMKQQ',                        # required
      aws_secret_access_key: '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',                        # required
      region:                'ap-northeast-2',                  # optional, defaults to 'us-east-1'
      host:                  '',             # optional, defaults to nil
      endpoint:              'https://s3.ap-northeast-2.amazonaws.com' # optional, defaults to nil
  }
  config.fog_directory  = 'byunghoonworld'                          # required
  config.fog_public     = true                                        # optional, defaults to true
  config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" } # optional, defaults to {}
end