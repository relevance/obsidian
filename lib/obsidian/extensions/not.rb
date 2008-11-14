module Obsidian
  module Extensions
    module Not
      # Instead of
      #    !name.blank?
      # Use not:
      #    name.not.blank?
      def not
        Not.new(self)
      end

      class Not
        private *instance_methods.select { |m| m !~ /(^__|^\W|^binding$)/ }

        def initialize(subject)
          @subject = subject
        end

        def method_missing(sym, *args, &blk)
          !@subject.send(sym, *args, &blk)
        end
      end
    end
  end
end

Object.class_eval { include Obsidian::Extensions::Not }