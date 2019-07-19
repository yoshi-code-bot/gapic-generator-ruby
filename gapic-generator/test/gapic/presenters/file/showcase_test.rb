# frozen_string_literal: true

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

class ShowcaseFilePresenterTest < PresenterTest
  def schema
    api :showcase
  end

  def test_echo
    file = schema.files.find { |f| f.name == "google/showcase/v1alpha3/echo.proto" }
    fp = FilePresenter.new schema, file

    assert_equal ["google", "showcase", "v1alpha3"], fp.address
    assert_equal "Google::Showcase::V1alpha3", fp.namespace
    assert_equal "google/showcase/v1alpha3/echo.rb", fp.docs_file_path

    assert_equal ["EchoRequest", "EchoResponse", "ExpandRequest", "PagedExpandRequest", "PagedExpandResponse", "WaitRequest", "WaitResponse", "WaitMetadata"], fp.messages.map(&:name)
    fp.messages.each { |mp| assert_kind_of MessagePresenter, mp }

    assert_equal [], fp.enums.map(&:name)
    fp.enums.each { |ep| assert_kind_of EnumPresenter, ep }
  end

  def test_identity
    file = schema.files.find { |f| f.name == "google/showcase/v1alpha3/identity.proto" }
    fp = FilePresenter.new schema, file

    assert_equal ["google", "showcase", "v1alpha3"], fp.address
    assert_equal "Google::Showcase::V1alpha3", fp.namespace
    assert_equal "google/showcase/v1alpha3/identity.rb", fp.docs_file_path

    assert_equal ["User", "CreateUserRequest", "GetUserRequest", "UpdateUserRequest", "DeleteUserRequest", "ListUsersRequest", "ListUsersResponse"], fp.messages.map(&:name)
    fp.messages.each { |mp| assert_kind_of MessagePresenter, mp }

    assert_equal [], fp.enums.map(&:name)
    fp.enums.each { |ep| assert_kind_of EnumPresenter, ep }
  end

  def test_messaging
    file = schema.files.find { |f| f.name == "google/showcase/v1alpha3/messaging.proto" }
    fp = FilePresenter.new schema, file

    assert_equal ["google", "showcase", "v1alpha3"], fp.address
    assert_equal "Google::Showcase::V1alpha3", fp.namespace
    assert_equal "google/showcase/v1alpha3/messaging.rb", fp.docs_file_path

    assert_equal ["Room", "CreateRoomRequest", "GetRoomRequest", "UpdateRoomRequest", "DeleteRoomRequest", "ListRoomsRequest", "ListRoomsResponse", "Blurb", "CreateBlurbRequest", "GetBlurbRequest", "UpdateBlurbRequest", "DeleteBlurbRequest", "ListBlurbsRequest", "ListBlurbsResponse", "SearchBlurbsRequest", "SearchBlurbsMetadata", "SearchBlurbsResponse", "StreamBlurbsRequest", "StreamBlurbsResponse", "SendBlurbsResponse", "ConnectRequest"], fp.messages.map(&:name)
    fp.messages.each { |mp| assert_kind_of MessagePresenter, mp }

    assert_equal [], fp.enums.map(&:name)
    fp.enums.each { |ep| assert_kind_of EnumPresenter, ep }
  end

  def test_testing
    file = schema.files.find { |f| f.name == "google/showcase/v1alpha3/testing.proto" }
    fp = FilePresenter.new schema, file

    assert_equal ["google", "showcase", "v1alpha3"], fp.address
    assert_equal "Google::Showcase::V1alpha3", fp.namespace
    assert_equal "google/showcase/v1alpha3/testing.rb", fp.docs_file_path

    assert_equal ["Session", "CreateSessionRequest", "GetSessionRequest", "ListSessionsRequest", "ListSessionsResponse", "DeleteSessionRequest", "ReportSessionRequest", "ReportSessionResponse", "Test", "Issue", "ListTestsRequest", "ListTestsResponse", "TestRun", "DeleteTestRequest", "VerifyTestRequest", "VerifyTestResponse"], fp.messages.map(&:name)
    fp.messages.each { |mp| assert_kind_of MessagePresenter, mp }

    assert_equal [], fp.enums.map(&:name)
    fp.enums.each { |ep| assert_kind_of EnumPresenter, ep }
  end
end