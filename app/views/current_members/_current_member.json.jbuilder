json.extract! current_member, :id, :memberID, :name, :email, :isAdmin, :isAlumni, :created_at, :updated_at
json.url current_member_url(current_member, format: :json)
