puts "Starting Carrierwave setup"

# config/initializers/carrierwave.rb

  CarrierWave.configure do |config|
    config.fog_credentials = {
      :provider               => 'AWS',                        # required
      :aws_access_key_id      => ENV['aws_key'],     # required
      :aws_secret_access_key  => ENV['aws_secret'], # required
      :region                 => 'us-east-1'                   # optional, default 'us-east-1'
      # :host                 => 's3.example.com',             # optional, defaults to nil
      # :endpoint             => 'https://s3.example.com:8080' # optional, defaults to nil
    }
    config.fog_directory    = "or-db-test-#{Rails.env}"     # required
    # config.fog_public     = true                              # optional, defaults to true
    # config.fog_attributes = {'Cache-Control'=>'max-age=3600'} # optional, defaults to {}
  end

  puts "Finished Carrierwave setup"