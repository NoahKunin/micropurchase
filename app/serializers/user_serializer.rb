class UserSerializer < ActiveModel::Serializer
  attributes :github_id,
             :duns_number,
             :name,
             :sam_status,
             :created_at,
             :updated_at,
             :id,
             :github_login

  def created_at
    object.created_at.iso8601 rescue nil
  end

  def updated_at
    object.updated_at.iso8601 rescue nil
  end
end
