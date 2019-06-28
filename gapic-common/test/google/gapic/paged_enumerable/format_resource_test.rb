# Copyright 2019 Google LLC
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

require "test_helper"

describe Google::Gapic::PagedEnumerable, :format_resource do
  it "enumerates all resources and formats them" do
    api_responses = [
      Gapic::Examples::GoodPagedResponse.new(
        users: [
          Gapic::Examples::User.new(name: "baz"),
          Gapic::Examples::User.new(name: "bif")
        ]
      )
    ]
    gax_stub = FakeGapicStub.new(*api_responses)
    request = Gapic::Examples::GoodPagedRequest.new
    response = Gapic::Examples::GoodPagedResponse.new(
      users:           [
        Gapic::Examples::User.new(name: "foo"),
        Gapic::Examples::User.new(name: "bar")
      ],
      next_page_token: "next"
    )
    options = Google::Gapic::ApiCall::Options.new
    upcase_resource = ->(user) { user.name.upcase }
    paged_enum = Google::Gapic::PagedEnumerable.new(
      gax_stub, :method_name, request, response, options, format_resource: upcase_resource
    )

    assert_equal ["FOO", "BAR", "BAZ", "BIF"], paged_enum.each.to_a
  end

  it "enumerates all pages and formats the resources" do
    api_responses = [
      Gapic::Examples::GoodPagedResponse.new(
        users: [
          Gapic::Examples::User.new(name: "baz"),
          Gapic::Examples::User.new(name: "bif")
        ]
      )
    ]
    gax_stub = FakeGapicStub.new(*api_responses)
    request = Gapic::Examples::GoodPagedRequest.new
    response = Gapic::Examples::GoodPagedResponse.new(
      users:           [
        Gapic::Examples::User.new(name: "foo"),
        Gapic::Examples::User.new(name: "bar")
      ],
      next_page_token: "next"
    )
    options = Google::Gapic::ApiCall::Options.new
    upcase_resource = ->(str) { str.upcase }
    paged_enum = Google::Gapic::PagedEnumerable.new(
      gax_stub, :method_name, request, response, options, format_resource: upcase_resource
    )

    page_proc = ->(page) { page.each.map(&:name) }
    assert_equal [["foo", "bar"], ["baz", "bif"]], paged_enum.each_page.map(&page_proc)
  end
end
