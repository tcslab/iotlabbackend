class CreateProviders < ActiveRecord::Migration
  def change
    create_table :providers do |t|
      t.string :name, limit: 40
      t.text :description
      t.string :urn_prefix
      t.string :address
      t.string :location
      t.string :url
      t.references :user, index: true

      t.timestamps
    end
  end
end
