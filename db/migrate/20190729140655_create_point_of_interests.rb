class CreatePointOfInterests < ActiveRecord::Migration[5.2]
  def change
    create_table :point_of_interests do |t|
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
