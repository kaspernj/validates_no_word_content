class NoWordContentValidator < ActiveModel::EachValidator
  VALIDATE_WORD_TAGS_INVALID = ['<w:WordDocument>', 'table.MsoNormalTable', '<w:LsdException', '<m:math']

  def validate_each(object, attribute, value)
    VALIDATE_WORD_TAGS_INVALID.each do |invalid_content|
      if value.to_s.include?(invalid_content)
        object.errors[attribute] << (options[:message].presence || :contains_word_content)
        break
      end
    end
  end
end
