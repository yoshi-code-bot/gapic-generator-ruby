# frozen_string_literal: true

# The MIT License (MIT)
#
# Copyright <YEAR> <COPYRIGHT HOLDER>
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in
# all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "gapic/common"
require "gapic/config"
require "gapic/config/method"

require "google/garbage/version"

require "so/much/trash/iam_policy/credentials"
require "so/much/trash/iam_policy/client"

module So
  module Much
    module Trash
      ##
      # API Overview
      #
      #
      # Manages Identity and Access Management (IAM) policies.
      #
      # Any implementation of an API that offers access control features
      # implements the google.iam.v1.IAMPolicy interface.
      #
      # ## Data model
      #
      # Access control is applied when a principal (user or service account), takes
      # some action on a resource exposed by a service. Resources, identified by
      # URI-like names, are the unit of access control specification. Service
      # implementations can choose the granularity of access control and the
      # supported permissions for their resources.
      # For example one database service may allow access control to be
      # specified only at the Table level, whereas another might allow access control
      # to also be specified at the Column level.
      #
      # ## Policy Structure
      #
      # See google.iam.v1.Policy
      #
      # This is intentionally not a CRUD style API because access control policies
      # are created and deleted implicitly with the resources to which they are
      # attached.
      #
      # @example Load this service and instantiate a gRPC client
      #
      #     require "so/much/trash/iam_policy"
      #     client = ::So::Much::Trash::IAMPolicy::Client.new
      #
      module IAMPolicy
      end
    end
  end
end

helper_path = ::File.join __dir__, "iam_policy", "helpers.rb"
require "so/much/trash/iam_policy/helpers" if ::File.file? helper_path
