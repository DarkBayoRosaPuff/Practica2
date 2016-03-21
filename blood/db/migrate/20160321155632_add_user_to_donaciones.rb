class AddUserToDonaciones < ActiveRecord::Migration
  def change
    add_reference :donaciones, :user, index: true
  end
end
