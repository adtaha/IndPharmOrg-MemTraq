json.extract! curr_member, :id, :studentID, :name, :email, :created_at, :updated_at
json.url curr_member_url(curr_member, format: :json)
