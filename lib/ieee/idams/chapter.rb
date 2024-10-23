# lib/ieee/idams/chapter.rb
# frozen_string_literal: true

module Ieee
  module Idams
    # Represents a chapter within an IEEE book
    class Chapter < Lutaml::Model::Serializable
      # Chapter title
      # @return [String] full chapter title, max 2000 chars
      attribute :title, :string

      # Chapter metadata
      # @return [ChapterInfo] detailed chapter information
      attribute :chapterinfo, ChapterInfo

      xml do
        root "chapter"
        map_element "title", to: :title
        map_element "chapterinfo", to: :chapterinfo
      end
    end
  end
end
