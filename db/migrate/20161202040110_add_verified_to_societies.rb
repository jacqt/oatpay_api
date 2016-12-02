class AddVerifiedToSocieties < ActiveRecord::Migration[5.0]
  def up
    add_column :societies, :verified, :boolean, default: false
    Society.find_each do |s|
      ActiveRecord::Base.transaction do
        s.with_lock do
          s.update_column(:verified, true)
        end
      end
    end
  end

  def down
    remove_column :societies, :verified
  end
end
