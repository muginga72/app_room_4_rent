class AddFullNameAndPhoneToAdmin < ActiveRecord::Migration[7.1]
  def change
    add_column :admins, :full_name, :string
    add_column :admins, :phone, :string
  end
end
