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
          # Container for enum with 3-Tier brand safety suitability control.
          class BrandSafetySuitabilityEnum
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # 3-Tier brand safety suitability control.
            module BrandSafetySuitability
              # Not specified.
              UNSPECIFIED = 0

              # Used for return value only. Represents value unknown in this version.
              UNKNOWN = 1

              # This option lets you show ads across all inventory on YouTube and video
              # partners that meet our standards for monetization. This option may be an
              # appropriate choice for brands that want maximum access to the full
              # breadth of videos eligible for ads, including, for example, videos that
              # have strong profanity in the context of comedy or a documentary, or
              # excessive violence as featured in video games.
              EXPANDED_INVENTORY = 2

              # This option lets you show ads across a wide range of content that's
              # appropriate for most brands, such as popular music videos, documentaries,
              # and movie trailers. The content you can show ads on is based on YouTube's
              # advertiser-friendly content guidelines that take into account, for
              # example, the strength or frequency of profanity, or the appropriateness
              # of subject matter like sensitive events. Ads won't show, for example, on
              # content with repeated strong profanity, strong sexual content, or graphic
              # violence.
              STANDARD_INVENTORY = 3

              # This option lets you show ads on a reduced range of content that's
              # appropriate for brands with particularly strict guidelines around
              # inappropriate language and sexual suggestiveness; above and beyond what
              # YouTube's advertiser-friendly content guidelines address. The videos
              # accessible in this sensitive category meet heightened requirements,
              # especially for inappropriate language and sexual suggestiveness. For
              # example, your ads will be excluded from showing on some of YouTube's most
              # popular music videos and other pop culture content across YouTube and
              # Google video partners.
              LIMITED_INVENTORY = 4
            end
          end
        end
      end
    end
  end
end
