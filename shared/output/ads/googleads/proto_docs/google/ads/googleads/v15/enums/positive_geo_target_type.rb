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


module Google
  module Ads
    module GoogleAds
      module V15
        module Enums
          # Container for enum describing possible positive geo target types.
          class PositiveGeoTargetTypeEnum
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # The possible positive geo target types.
            module PositiveGeoTargetType
              # Not specified.
              UNSPECIFIED = 0

              # The value is unknown in this version.
              UNKNOWN = 1

              # Specifies that an ad is triggered if the user is in,
              # or shows interest in, advertiser's targeted locations.
              PRESENCE_OR_INTEREST = 5

              # Specifies that an ad is triggered if the user
              # searches for advertiser's targeted locations.
              # This can only be used with Search and standard
              # Shopping campaigns.
              SEARCH_INTEREST = 6

              # Specifies that an ad is triggered if the user is in
              # or regularly in advertiser's targeted locations.
              PRESENCE = 7
            end
          end
        end
      end
    end
  end
end
