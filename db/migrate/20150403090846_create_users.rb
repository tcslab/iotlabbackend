class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit: 20
      t.string :surname, limit: 20
      t.string :address
      t.string :hometown, limit: 40
      t.string :country, limit: 30
      t.string :gender, limit: 10
      t.string :education
      t.date :birthdate
      t.string :employment_sector, limit: 50
      t.string :employment_status, limit: 50
      t.string :username, limit: 30, null: false
      t.string :password_hash
      t.string :email, limit: 30, null: false
      t.boolean :email_confirmed, default: false, null: false
      t.text :security_stamp
      t.string :phone_number, limit: 50
      t.boolean :phone_number_confirmed, default: false, null: false
      t.boolean :two_factor_confirmed, default: false, null: false
      t.datetime :lockout_end_date_utc, default: Time.now, null: false
      t.integer :access_failed_count

      t.timestamps
    end
  end
end
