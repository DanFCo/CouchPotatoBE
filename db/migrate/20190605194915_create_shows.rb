class CreateShows < ActiveRecord::Migration[5.2]
  def change
    create_table :shows do |t|
      t.string :name, default: "no name"
      t.string :genre, default: "undefined"
      t.integer :runtime, default: 0
      t.string :website, default: "none"
      t.integer :rating, default: 0
      t.string :network, default: "unknown"
      t.string :webchannel, default: "none"
      t.string :thumbnail, default: "https://jaypeeonline.net/wp-content/uploads/2010/03/technical_difficulty.jpg"
      t.string :poster, default: "https://jaypeeonline.net/wp-content/uploads/2010/03/technical_difficulty.jpg"
      t.string :summary, default: "no summary available"

      t.timestamps
    end
  end
end
