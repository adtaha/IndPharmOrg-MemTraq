json.extract!(speaker, :id, :speakerID, :speakerName, :speakerEmail, :dateSpoke, :organizationName, :speakerWebsite, :created_at, :updated_at)
json.url(speaker_url(speaker, format: :json))
