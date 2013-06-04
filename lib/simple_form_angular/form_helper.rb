module SimpleFormAngular
  module FormHelper
    extend ActiveSupport::Concern

    included do
      alias_method_chain :simple_form_for, :angular
    end

    def simple_form_for_with_angular(record, options={}, &block)
      if ng_options = options.delete(:ng)
        options[:html] ||= {}
        options[:html].merge! SimpleFormAngular.build_angular_options(ng_options)
      end

      simple_form_for_without_angular(record, options, &block)
    end
  end
end

SimpleForm::ActionViewExtensions::FormHelper.send :include, SimpleFormAngular::FormHelper