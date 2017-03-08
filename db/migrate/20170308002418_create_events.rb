class CreateEvents < ActiveRecord::Migration[5.0]
  def change
    create_table :events do |t|
      t.string      :event_name
      t.text        :description
      t.string      :location
      t.string      :fb_event_url
      t.integer     :user_id
      t.datetime    :start_time
      t.datetime    :end_time

      t.timestamps
    end
  end
end
