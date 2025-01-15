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
        module Common
          # A rule specifying the maximum number of times an ad (or some set of ads) can
          # be shown to a user over a particular time period.
          # @!attribute [rw] key
          #   @return [::Google::Ads::GoogleAds::V15::Common::FrequencyCapKey]
          #     The key of a particular frequency cap. There can be no more
          #     than one frequency cap with the same key.
          # @!attribute [rw] cap
          #   @return [::Integer]
          #     Maximum number of events allowed during the time range by this cap.
          class FrequencyCapEntry
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end

          # A group of fields used as keys for a frequency cap.
          # There can be no more than one frequency cap with the same key.
          # @!attribute [rw] level
          #   @return [::Google::Ads::GoogleAds::V15::Enums::FrequencyCapLevelEnum::FrequencyCapLevel]
          #     The level on which the cap is to be applied (for example, ad group ad, ad
          #     group). The cap is applied to all the entities of this level.
          # @!attribute [rw] event_type
          #   @return [::Google::Ads::GoogleAds::V15::Enums::FrequencyCapEventTypeEnum::FrequencyCapEventType]
          #     The type of event that the cap applies to (for example, impression).
          # @!attribute [rw] time_unit
          #   @return [::Google::Ads::GoogleAds::V15::Enums::FrequencyCapTimeUnitEnum::FrequencyCapTimeUnit]
          #     Unit of time the cap is defined at (for example, day, week).
          # @!attribute [rw] time_length
          #   @return [::Integer]
          #     Number of time units the cap lasts.
          class FrequencyCapKey
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods
          end
        end
      end
    end
  end
end
