# frozen_string_literal: true

# Copyright 2020 Google LLC
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


module Google
  module Cloud
    module Vision
      module V1
        module ImageAnnotator
          # Path helper methods for the ImageAnnotator API.
          module Paths
            ##
            # Create a fully-qualified ProductSet resource string.
            #
            # The resource will be in the following format:
            #
            # `projects/{project}/locations/{location}/productSets/{product_set}`
            #
            # @param project [String]
            # @param location [String]
            # @param product_set [String]
            #
            # @return [String]
            def product_set_path project:, location:, product_set:
              raise ArgumentError, "project cannot contain /" if project.to_s.include? "/"
              raise ArgumentError, "location cannot contain /" if location.to_s.include? "/"

              "projects/#{project}/locations/#{location}/productSets/#{product_set}"
            end
          end
        end
      end
    end
  end
end
