class CreateDashboards < ActiveRecord::Migration[5.2]
  def change
    create_table :dashboards do |t|
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
