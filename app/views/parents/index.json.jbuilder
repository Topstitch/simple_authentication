json.array!(@parents) do |parent|
  json.extract! parent, :id, :email, :name, :child, :teacher_id
  json.url parent_url(parent, format: :json)
end
