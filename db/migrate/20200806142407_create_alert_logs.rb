class CreateAlertLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :alert_logs do |t|

      t.timestamps
    end
  end
end
