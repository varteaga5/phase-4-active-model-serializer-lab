class AuthorPostSerializer < ActiveModel::Serializer
  attributes :title, :short_content, :tags
  #tags needs the nested functionality

  def short_content
    "#{self.object.content[0..39]}..."
  end
end
