class FixRatingTypo < ActiveRecord::Migration
  def change
    rename_column :reviews, :ratings, :rating
  end
end
