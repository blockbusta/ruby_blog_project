class AddCreatedByToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :created_by, :string
  end
end
