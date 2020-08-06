class AddMessageToAlertLogs < ActiveRecord::Migration[5.2]
  def change
    add_column :alert_logs, :message, :string
  end
end
