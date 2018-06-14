Rails.application.config.paperclip_defaults = {
  storage: :s3,
  s3_credentials: {
    bucket: 'efgriver-training',
    access_key_id: ENV['AWS_ACCESS_KEY_ID'],
    secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
  },
  s3_protocol: :https,
  s3_region: 'ap-northeast-1'
 }
