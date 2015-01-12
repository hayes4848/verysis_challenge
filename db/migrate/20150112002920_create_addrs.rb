class CreateAddrs < ActiveRecord::Migration
  def change
    create_table :addrs do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.belongs_to :user

      t.timestamps
    end
  end
end
