# frozen_string_literal: true

require "lutaml/model"

module Ieee
  module Idams
    class Publication < Lutaml::Model::Serializable
      attribute :title, :string
      # attribute :date_last_accessed, :string
      # attribute :display_label, :string
      # attribute :note, :string
      # attribute :access, :string
      # attribute :usage, :string

      xml do
        root "publication"
        namespace "http://www.loc.gov/mods/v3", nil

        # map_content to: :content
        map_element "title", to: :title
        # map_attribute "dateLastAccessed", to: :date_last_accessed
        # map_attribute "displayLabel", to: :display_label
        # map_attribute "note", to: :note
        # map_attribute "access", to: :access
        # map_attribute "usage", to: :usage
      end
    end
  end
end
