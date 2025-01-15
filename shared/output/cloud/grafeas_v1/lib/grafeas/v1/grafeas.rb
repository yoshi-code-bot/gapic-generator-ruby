# frozen_string_literal: true

# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "grafeas/v1/version"

require "grafeas/v1/grafeas/paths"
require "grafeas/v1/grafeas/client"

module Grafeas
  module V1
    ##
    # [Grafeas](https://grafeas.io) API.
    #
    # Retrieves analysis results of Cloud components such as Docker container
    # images.
    #
    # Analysis results are stored as a series of occurrences. An `Occurrence`
    # contains information about a specific analysis instance on a resource. An
    # occurrence refers to a `Note`. A note contains details describing the
    # analysis and is generally stored in a separate project, called a `Provider`.
    # Multiple occurrences can refer to the same note.
    #
    # For example, an SSL vulnerability could affect multiple images. In this case,
    # there would be one note for the vulnerability and an occurrence for each
    # image with the vulnerability referring to that note.
    #
    # @example Load this service and instantiate a gRPC client
    #
    #     require "grafeas/v1/grafeas"
    #     client = ::Grafeas::V1::Grafeas::Client.new
    #
    module Grafeas
    end
  end
end

helper_path = ::File.join __dir__, "grafeas", "helpers.rb"
require "grafeas/v1/grafeas/helpers" if ::File.file? helper_path
