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

require "helper"

require "gapic/grpc/service_stub"

require "testing/nonstandard_lro_grpc/nonstandard_lro_grpc_pb"
require "testing/nonstandard_lro_grpc/nonstandard_lro_grpc_services_pb"
require "testing/nonstandard_lro_grpc/all_subclients_consumer"

class ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      catch :response do
        yield @response, @operation if block_given?
        @response
      end
    end

    def endpoint
      "endpoint.example.com"
    end

    def universe_domain
      "example.com"
    end

    def stub_logger
      nil
    end

    def logger
      nil
    end
  end

  def test_plain_lro_rpc
    # Create GRPC objects.
    grpc_response = ::Testing::NonstandardLroGrpc::NonstandardOperation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    request_id = "hello world"

    plain_lro_rpc_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :plain_lro_rpc, name
      assert_kind_of ::Testing::NonstandardLroGrpc::Request, request
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, plain_lro_rpc_client_stub do
      # Create client
      client = ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.plain_lro_rpc({ request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.plain_lro_rpc request_id: request_id do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.plain_lro_rpc ::Testing::NonstandardLroGrpc::Request.new(request_id: request_id) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.plain_lro_rpc({ request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.plain_lro_rpc(::Testing::NonstandardLroGrpc::Request.new(request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, plain_lro_rpc_client_stub.call_rpc_count
    end
  end

  def test_another_lro_rpc
    # Create GRPC objects.
    grpc_response = ::Testing::NonstandardLroGrpc::NonstandardOperation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    request_id = "hello world"

    another_lro_rpc_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :another_lro_rpc, name
      assert_kind_of ::Testing::NonstandardLroGrpc::AnotherRequest, request
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, another_lro_rpc_client_stub do
      # Create client
      client = ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.another_lro_rpc({ request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.another_lro_rpc request_id: request_id do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.another_lro_rpc ::Testing::NonstandardLroGrpc::AnotherRequest.new(request_id: request_id) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.another_lro_rpc({ request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.another_lro_rpc(::Testing::NonstandardLroGrpc::AnotherRequest.new(request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, another_lro_rpc_client_stub.call_rpc_count
    end
  end

  def test_non_copy_another_lro_rpc
    # Create GRPC objects.
    grpc_response = ::Testing::NonstandardLroGrpc::NonstandardOperation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.

    non_copy_another_lro_rpc_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :non_copy_another_lro_rpc, name
      assert_kind_of ::Testing::NonstandardLroGrpc::NonCopyRequest, request
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, non_copy_another_lro_rpc_client_stub do
      # Create client
      client = ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.non_copy_another_lro_rpc({  }) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.non_copy_another_lro_rpc ::Testing::NonstandardLroGrpc::NonCopyRequest.new() do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.non_copy_another_lro_rpc({  }, grpc_options) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.non_copy_another_lro_rpc(::Testing::NonstandardLroGrpc::NonCopyRequest.new(), grpc_options) do |response, operation|
        assert_kind_of Gapic::GenericLRO::Operation, response
        assert_equal grpc_response, response.operation
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 4, non_copy_another_lro_rpc_client_stub.call_rpc_count
    end
  end

  def test_aip_lro
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    request_id = "hello world"

    aip_lro_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :aip_lro, name
      assert_kind_of ::Testing::NonstandardLroGrpc::Request, request
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, aip_lro_client_stub do
      # Create client
      client = ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.aip_lro({ request_id: request_id }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.aip_lro request_id: request_id do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.aip_lro ::Testing::NonstandardLroGrpc::Request.new(request_id: request_id) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.aip_lro({ request_id: request_id }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.aip_lro(::Testing::NonstandardLroGrpc::Request.new(request_id: request_id), grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, aip_lro_client_stub.call_rpc_count
    end
  end

  def test_no_lro
    # Create GRPC objects.
    grpc_response = ::Testing::NonstandardLroGrpc::Response.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    request_id = "hello world"

    no_lro_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :no_lro, name
      assert_kind_of ::Testing::NonstandardLroGrpc::Request, request
      assert_equal "hello world", request["request_id"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, no_lro_client_stub do
      # Create client
      client = ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.no_lro({ request_id: request_id }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.no_lro request_id: request_id do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.no_lro ::Testing::NonstandardLroGrpc::Request.new(request_id: request_id) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.no_lro({ request_id: request_id }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.no_lro(::Testing::NonstandardLroGrpc::Request.new(request_id: request_id), grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, no_lro_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    dummy_stub = ClientStub.new nil, nil
    Gapic::ServiceStub.stub :new, dummy_stub do
      client = ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Testing::NonstandardLroGrpc::AllSubclientsConsumer::Operations, client.operations_client
  end
end
