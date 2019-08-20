class CreatePublishhouses < ActiveRecord::Migration[5.2]
  def change
    create_table :publishhouses do |t|
      t.string :publishhouse_name

      t.timestamps
    end
  end
end
