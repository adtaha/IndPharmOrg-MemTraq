json.extract!(member_org, :id, :memberOrgID, :memberID, :organizationID, :created_at, :updated_at)
json.url(member_org_url(member_org, format: :json))
