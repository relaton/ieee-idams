module Ieee
  module Idams

    # Represents a keyword
    class Keyword < Lutaml::Model::Serializable
      # Keyword term
      # @return [String] keyword text
      attribute :keywordterm, :string

      xml do
        root "keyword"
        map_element "keywordterm", to: :keywordterm
      end
    end
  end
end
