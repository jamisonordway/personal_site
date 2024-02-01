class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :url
      t.text :description

      t.timestamps
    end
  end
end
