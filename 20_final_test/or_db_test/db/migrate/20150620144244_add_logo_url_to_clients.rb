class AddLogoUrlToClients < ActiveRecord::Migration
  def change
    
    add_column :clients, :logourl, :string
  
  end
end
