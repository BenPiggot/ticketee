class ChangeDataTypeForAdmin < ActiveRecord::Migration
  def self.up
    change_table :users do |t|
      t.change :admin, :boolean, default: false
    end
  end

  def self.down 
    change_table :users do |t|
      t.change :admin, :boolean
    end
  end
end
