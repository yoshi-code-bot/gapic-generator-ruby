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
          # Container for enum describing possible payment modes.
          class PaymentModeEnum
            include ::Google::Protobuf::MessageExts
            extend ::Google::Protobuf::MessageExts::ClassMethods

            # Enum describing possible payment modes.
            module PaymentMode
              # Not specified.
              UNSPECIFIED = 0

              # Used for return value only. Represents value unknown in this version.
              UNKNOWN = 1

              # Pay per interaction.
              CLICKS = 4

              # Pay per conversion value. This mode is only supported by campaigns with
              # AdvertisingChannelType.HOTEL, BiddingStrategyType.COMMISSION, and
              # BudgetType.STANDARD.
              CONVERSION_VALUE = 5

              # Pay per conversion. This mode is only supported by campaigns with
              # AdvertisingChannelType.DISPLAY (excluding
              # AdvertisingChannelSubType.DISPLAY_GMAIL), BiddingStrategyType.TARGET_CPA,
              # and BudgetType.FIXED_CPA. The customer must also be eligible for this
              # mode. See Customer.eligibility_failure_reasons for details.
              CONVERSIONS = 6

              # Pay per guest stay value. This mode is only supported by campaigns with
              # AdvertisingChannelType.HOTEL, BiddingStrategyType.COMMISSION, and
              # BudgetType.STANDARD.
              GUEST_STAY = 7
            end
          end
        end
      end
    end
  end
end
