module SimpleFormAngular
  def self.build_angular_options(options)
    Hash[options.map { |k, v| [ "ng-#{k}", v.to_s ] }]
  end
end

require "simple_form_angular/form_builder"
require "simple_form_angular/form_helper"

require "simple_form_angular/version"


