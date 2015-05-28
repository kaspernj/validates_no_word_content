class DummyModel
  include ActiveModel::Validations

  attr_accessor :content

  validates_presence_of :content
  validates :content, no_word_content: true
end
