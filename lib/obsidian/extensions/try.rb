module Obsidian
  module Extensions
    module Try
      # Instead of
      #    @person ? @person.name : nil
      # Use try:
      #    @person.try(:name)
      def try(method)
        send method if respond_to? method
      end
      
    end
  end
end

Object.class_eval { include Obsidian::Extensions::Try }