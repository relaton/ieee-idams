# frozen_string_literal: true

module Ieee
  module Idams
    # ICS Codes
    class IcsCodes < Lutaml::Model::Serializable
      attribute :code_term, IcsCodeTerm, collection: true,
                                         initialize_empty: true

      xml do
        element "icscodes"
        map_element "code_term", to: :code_term
      end
    end
  end
end
