class AddSendInformationStatusToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :sendinformationstatus, :boolean
  end
end
