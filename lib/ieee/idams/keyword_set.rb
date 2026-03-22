# frozen_string_literal: true

module Ieee
  module Idams
    # Represents a set of keywords
    class KeywordSet < Lutaml::Model::Serializable
      # Keyword type
      # @return [String] type of keywords
      attribute :keywordtype, :string

      # List of keywords
      # @return [Array<Keyword>] keywords
      attribute :keyword, Keyword, collection: true, initialize_empty: true

      xml do
        element "keywordset"
        map_attribute "keywordtype", to: :keywordtype
        map_element "keyword", to: :keyword
      end
    end
  end
end
