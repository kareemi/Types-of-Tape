class CreateTapes < ActiveRecord::Migration[5.0]
  def change
    create_table :tapes do |t|
      t.string :kind
      t.string :purpose

      t.timestamps
    end
  end
end
