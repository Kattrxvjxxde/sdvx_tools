CarrierWave.configure do |config|
  config.storage = :aws
  config.cache_storage = :aws
  config.aws_bucket = Settings.aws.s3.carrierwave.bucket
  config.aws_acl = 'public-read'
  config.aws_credentials = Settings.aws.s3.carrierwave.credentials.to_h
  if Settings.aws.s3.carrierwave.key?(:asset_host)
    config.asset_host = Settings.aws.s3.carrierwave.asset_host
    config.asset_host_public = true
  end
  # The maximum period for authenticated_urls is only 7 days.
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 7
end
