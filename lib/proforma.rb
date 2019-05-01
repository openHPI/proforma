# frozen_string_literal: true

require 'active_model'
require 'nokogiri'
require 'zip'
require 'base64'
require 'securerandom'

require 'proforma/version'

require 'proforma/importer'
require 'proforma/exporter'
require 'proforma/task'

module Proforma
  XML_NAMESPACE = 'urn:proforma:v2.0.1'
  SCHEMA_PATH = File.join(File.dirname(File.expand_path(__FILE__)), '../assets/schemas/proforma.xsd')

  class Error < StandardError; end
end
