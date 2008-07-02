require 'test/unit'

module Obsidian::Rails    
  module HelperTest
    # include all the fun dependancies needed to test helpers
    def helper_test helper_under_test = nil
      include ActionView::Helpers::CaptureHelper
      include ActionView::Helpers::DateHelper
      include ActionView::Helpers::UrlHelper 
      include ActionView::Helpers::TextHelper
      include ActionView::Helpers::AssetTagHelper
      include ActionView::Helpers::TagHelper
      include ActionView::Helpers::FormOptionsHelper
      include ActionView::Helpers::FormTagHelper
      include ApplicationHelper
      include helper_under_test if helper_under_test
    end
    
  end
end

Test::Unit::TestCase.extend Obsidian::Rails::HelperTest