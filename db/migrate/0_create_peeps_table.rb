class CreatePeepsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :peeps do |t|
      t.string :text
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
