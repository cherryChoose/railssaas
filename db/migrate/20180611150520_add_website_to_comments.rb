class AddWebsiteToComments < ActiveRecord::Migration
  def change
    add_column :comments, :website, :sting
  end
end
