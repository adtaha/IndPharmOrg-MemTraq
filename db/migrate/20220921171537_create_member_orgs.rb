class CreateMemberOrgs < ActiveRecord::Migration[6.1]
  def change
    create_table :member_orgs do |t|
      t.integer :memberOrgID
      t.integer :memberID
      t.integer :organizationID

      t.timestamps
    end
  end
end
