class LogoUploader
  include Sidekiq::Worker

  def perform(client_id, file)
    client = Client.find(client_id)
    client.logourl = file
    client.save
  end

end