module SimpleFormAngular
  module FormBuilder
    extend ActiveSupport::Concern

    included do
      alias_method_chain :input, :angular
    end

    def input_with_angular(attribute_name, options = {}, &block)
      if ng_options = options.delete(:ng)
        options[:input_html] ||= {}
        options[:input_html].merge! SimpleFormAngular.build_angular_options(ng_options)
      end

      input_without_angular(attribute_name, options, &block)
    end
  end
end

SimpleForm::FormBuilder.send :include, SimpleFormAngular::FormBuilder