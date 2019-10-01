class CreateReis < ActiveRecord::Migration[5.2]
  def change
    create_table :reis do |t|
      t.text :content

      t.timestamps
    end
  end
end
