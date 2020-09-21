class CreatePhotos < ActiveRecord::Migration[6.0]
  def change
    create_table :photos do |t|
      t.belongs_to :user
      t.date :date_time
      t.string :file_name

      t.timestamps
    end
  end
end
