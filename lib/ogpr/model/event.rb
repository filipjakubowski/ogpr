# frozen_string_literal: true

require_relative './base.rb'

module Ogpr
  module Model
    class Event < Base
      def initialize(hash)
        super hash.select { |k, _| k =~ /^event:\w+/ }   
        @prefix = 'event'
      end

      def type
        @meta['event']
      end
    end
  end
end
