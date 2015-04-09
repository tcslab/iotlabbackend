class AddProviderRefToNodes < ActiveRecord::Migration
  def change
    add_reference :nodes, :provider, index: true
  end
end
