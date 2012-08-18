class RenameColumnInLeads < ActiveRecord::Migration
	def up
		rename_column :leads, :type, :usertype
	end

	def down
		rename_column :leads, :usertype, :type
	end
end
