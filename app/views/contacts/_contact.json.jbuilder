json.extract! contact, :id, :Question, :Answer, :Email, :created_at, :updated_at
json.url contact_url(contact, format: :json)
