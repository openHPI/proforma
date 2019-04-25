# frozen_string_literal: true

require 'proforma/task/task_file'
require 'proforma/task/test'
require 'proforma/task/model_solution'

module Proforma
  class Task
    attr_accessor :title, :description, :internal_description, :proglang, :submission_restriction, :files,
                  :external_resources, :model_solutions, :tests, :grading_hints, :uuid, :parent_uuid, :lang
  end
end
