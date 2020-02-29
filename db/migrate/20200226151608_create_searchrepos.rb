class CreateSearchrepos < ActiveRecord::Migration[6.0]
  def change
    create_table :searchrepos do |t|
      t.string :title
      t.text :body
      t.string :date

      t.timestamps
    end
  end
end
