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

require "minitest/autorun"

require "gapic/grpc/service_stub"

require "garbage/garbage_pb"
require "garbage/garbage_services_pb"
require "so/much/trash/garbage_service"

class So::Much::Trash::GarbageService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args
      @call_rpc_count += 1

      @requests << @block&.call(*args)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_get_simple_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::SimpleGarbage.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_simple_garbage_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_simple_garbage, name
      assert_kind_of So::Much::Trash::SimpleGarbage, request
      assert_equal "hello world", request.name
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_simple_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_simple_garbage({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_simple_garbage name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_simple_garbage So::Much::Trash::SimpleGarbage.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_simple_garbage({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_simple_garbage So::Much::Trash::SimpleGarbage.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_simple_garbage_client_stub.call_rpc_count
    end
  end

  def test_get_specific_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::SpecificGarbage.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    int32 = 42
    int64 = 42
    uint32 = 42
    uint64 = 42
    bool = true
    float = 3.14
    double = 3.14
    bytes = "hello world"
    msg = {}
    enum = :Default
    nested = {}

    get_specific_garbage_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_specific_garbage, name
      assert_kind_of So::Much::Trash::SpecificGarbage, request
      assert_equal "hello world", request.name
      assert_equal 42, request.int32
      assert_equal 42, request.int64
      assert_equal 42, request.uint32
      assert_equal 42, request.uint64
      assert_equal true, request.bool
      assert_equal 3.14, request.float
      assert_equal 3.14, request.double
      assert_equal "hello world", request.bytes
      assert_equal Gapic::Protobuf.coerce({}, to: So::Much::Trash::GarbageMap), request.msg
      assert_equal :Default, request.enum
      assert_equal Gapic::Protobuf.coerce({}, to: So::Much::Trash::SpecificGarbage::NestedGarbage), request.nested
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_specific_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_specific_garbage({ name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum, nested: nested }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_specific_garbage name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum, nested: nested do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_specific_garbage So::Much::Trash::SpecificGarbage.new(name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum, nested: nested) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_specific_garbage({ name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum, nested: nested }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_specific_garbage So::Much::Trash::SpecificGarbage.new(name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum, nested: nested), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_specific_garbage_client_stub.call_rpc_count
    end
  end

  def test_get_nested_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::SpecificGarbage::NestedGarbage.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    int32 = 42
    int64 = 42
    uint32 = 42
    uint64 = 42
    bool = true
    float = 3.14
    double = 3.14
    bytes = "hello world"
    msg = {}
    enum = :Default

    get_nested_garbage_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_nested_garbage, name
      assert_kind_of So::Much::Trash::SpecificGarbage::NestedGarbage, request
      assert_equal "hello world", request.name
      assert_equal 42, request.int32
      assert_equal 42, request.int64
      assert_equal 42, request.uint32
      assert_equal 42, request.uint64
      assert_equal true, request.bool
      assert_equal 3.14, request.float
      assert_equal 3.14, request.double
      assert_equal "hello world", request.bytes
      assert_equal Gapic::Protobuf.coerce({}, to: So::Much::Trash::GarbageMap), request.msg
      assert_equal :Default, request.enum
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_nested_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_nested_garbage({ name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_nested_garbage name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_nested_garbage So::Much::Trash::SpecificGarbage::NestedGarbage.new(name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_nested_garbage({ name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_nested_garbage So::Much::Trash::SpecificGarbage::NestedGarbage.new(name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, msg: msg, enum: enum), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_nested_garbage_client_stub.call_rpc_count
    end
  end

  def test_get_repeated_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::RepeatedGarbage.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    repeated_name = ["hello world"]
    repeated_int32 = [42]
    repeated_int64 = [42]
    repeated_uint32 = [42]
    repeated_uint64 = [42]
    repeated_bool = [true]
    repeated_float = [3.14]
    repeated_double = [3.14]
    repeated_bytes = ["hello world"]
    repeated_msg = [{}]
    repeated_enum = [:Default]

    get_repeated_garbage_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_repeated_garbage, name
      assert_kind_of So::Much::Trash::RepeatedGarbage, request
      assert_equal ["hello world"], request.repeated_name
      assert_equal [42], request.repeated_int32
      assert_equal [42], request.repeated_int64
      assert_equal [42], request.repeated_uint32
      assert_equal [42], request.repeated_uint64
      assert_equal [true], request.repeated_bool
      assert_equal [3.14], request.repeated_float
      assert_equal [3.14], request.repeated_double
      assert_equal ["hello world"], request.repeated_bytes
      assert_kind_of So::Much::Trash::GarbageMap, request.repeated_msg.first
      assert_equal [:Default], request.repeated_enum
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_repeated_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_repeated_garbage({ repeated_name: repeated_name, repeated_int32: repeated_int32, repeated_int64: repeated_int64, repeated_uint32: repeated_uint32, repeated_uint64: repeated_uint64, repeated_bool: repeated_bool, repeated_float: repeated_float, repeated_double: repeated_double, repeated_bytes: repeated_bytes, repeated_msg: repeated_msg, repeated_enum: repeated_enum }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_repeated_garbage repeated_name: repeated_name, repeated_int32: repeated_int32, repeated_int64: repeated_int64, repeated_uint32: repeated_uint32, repeated_uint64: repeated_uint64, repeated_bool: repeated_bool, repeated_float: repeated_float, repeated_double: repeated_double, repeated_bytes: repeated_bytes, repeated_msg: repeated_msg, repeated_enum: repeated_enum do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_repeated_garbage So::Much::Trash::RepeatedGarbage.new(repeated_name: repeated_name, repeated_int32: repeated_int32, repeated_int64: repeated_int64, repeated_uint32: repeated_uint32, repeated_uint64: repeated_uint64, repeated_bool: repeated_bool, repeated_float: repeated_float, repeated_double: repeated_double, repeated_bytes: repeated_bytes, repeated_msg: repeated_msg, repeated_enum: repeated_enum) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_repeated_garbage({ repeated_name: repeated_name, repeated_int32: repeated_int32, repeated_int64: repeated_int64, repeated_uint32: repeated_uint32, repeated_uint64: repeated_uint64, repeated_bool: repeated_bool, repeated_float: repeated_float, repeated_double: repeated_double, repeated_bytes: repeated_bytes, repeated_msg: repeated_msg, repeated_enum: repeated_enum }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_repeated_garbage So::Much::Trash::RepeatedGarbage.new(repeated_name: repeated_name, repeated_int32: repeated_int32, repeated_int64: repeated_int64, repeated_uint32: repeated_uint32, repeated_uint64: repeated_uint64, repeated_bool: repeated_bool, repeated_float: repeated_float, repeated_double: repeated_double, repeated_bytes: repeated_bytes, repeated_msg: repeated_msg, repeated_enum: repeated_enum), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_repeated_garbage_client_stub.call_rpc_count
    end
  end

  def test_get_typical_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::TypicalGarbage.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    int32 = 42
    int64 = 42
    uint32 = 42
    uint64 = 42
    bool = true
    float = 3.14
    double = 3.14
    bytes = "hello world"
    timeout = {}
    duration = {}
    msg = {}
    enum = :Default

    get_typical_garbage_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_typical_garbage, name
      assert_kind_of So::Much::Trash::TypicalGarbage, request
      assert_equal "hello world", request.name
      assert_equal 42, request.int32
      assert_equal 42, request.int64
      assert_equal 42, request.uint32
      assert_equal 42, request.uint64
      assert_equal true, request.bool
      assert_equal 3.14, request.float
      assert_equal 3.14, request.double
      assert_equal "hello world", request.bytes
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::Timestamp), request.timeout
      assert_equal Gapic::Protobuf.coerce({}, to: Google::Protobuf::Duration), request.duration
      assert_equal Gapic::Protobuf.coerce({}, to: So::Much::Trash::GarbageMap), request.msg
      assert_equal :Default, request.enum
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_typical_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_typical_garbage({ name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, timeout: timeout, duration: duration, msg: msg, enum: enum }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_typical_garbage name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, timeout: timeout, duration: duration, msg: msg, enum: enum do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_typical_garbage So::Much::Trash::TypicalGarbage.new(name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, timeout: timeout, duration: duration, msg: msg, enum: enum) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_typical_garbage({ name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, timeout: timeout, duration: duration, msg: msg, enum: enum }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_typical_garbage So::Much::Trash::TypicalGarbage.new(name: name, int32: int32, int64: int64, uint32: uint32, uint64: uint64, bool: bool, float: float, double: double, bytes: bytes, timeout: timeout, duration: duration, msg: msg, enum: enum), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_typical_garbage_client_stub.call_rpc_count
    end
  end

  def test_get_complex_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::ComplexGarbage.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    layer1 = {}

    get_complex_garbage_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_complex_garbage, name
      assert_kind_of So::Much::Trash::ComplexGarbage, request
      assert_equal Gapic::Protobuf.coerce({}, to: So::Much::Trash::ComplexGarbage::Layer1Garbage), request.layer1
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_complex_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_complex_garbage({ layer1: layer1 }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_complex_garbage layer1: layer1 do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_complex_garbage So::Much::Trash::ComplexGarbage.new(layer1: layer1) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_complex_garbage({ layer1: layer1 }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_complex_garbage So::Much::Trash::ComplexGarbage.new(layer1: layer1), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_complex_garbage_client_stub.call_rpc_count
    end
  end

  def test_get_paged_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::PagedGarbageResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    garbage = "hello world"
    page_size = 42
    page_token = "hello world"

    get_paged_garbage_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_paged_garbage, name
      assert_kind_of So::Much::Trash::PagedGarbageRequest, request
      assert_equal "hello world", request.garbage
      assert_equal 42, request.page_size
      assert_equal "hello world", request.page_token
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_paged_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_paged_garbage({ garbage: garbage, page_size: page_size, page_token: page_token }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_paged_garbage garbage: garbage, page_size: page_size, page_token: page_token do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_paged_garbage So::Much::Trash::PagedGarbageRequest.new(garbage: garbage, page_size: page_size, page_token: page_token) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_paged_garbage({ garbage: garbage, page_size: page_size, page_token: page_token }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_paged_garbage So::Much::Trash::PagedGarbageRequest.new(garbage: garbage, page_size: page_size, page_token: page_token), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_paged_garbage_client_stub.call_rpc_count
    end
  end

  def test_long_running_garbage
    # Create GRPC objects.
    grpc_response = Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    garbage = "hello world"

    long_running_garbage_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :long_running_garbage, name
      assert_kind_of So::Much::Trash::LongRunningGarbageRequest, request
      assert_equal "hello world", request.garbage
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, long_running_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.long_running_garbage({ garbage: garbage }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.long_running_garbage garbage: garbage do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.long_running_garbage So::Much::Trash::LongRunningGarbageRequest.new(garbage: garbage) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.long_running_garbage({ garbage: garbage }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.long_running_garbage So::Much::Trash::LongRunningGarbageRequest.new(garbage: garbage), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, long_running_garbage_client_stub.call_rpc_count
    end
  end

  def test_client_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::ListGarbageResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a client streaming method.
    garbage = "hello world"

    client_garbage_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :client_garbage, name
      assert_kind_of Enumerable, request
      refute_nil options
      request
    end

    Gapic::ServiceStub.stub :new, client_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use enumerable object with hash and protobuf object.
      request_hash = { garbage: garbage }
      request_proto = So::Much::Trash::ListGarbageRequest.new garbage: garbage
      enum_input = [request_hash, request_proto].to_enum
      client.client_garbage enum_input do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common).
      request_hash = { garbage: garbage }
      request_proto = So::Much::Trash::ListGarbageRequest.new garbage: garbage
      stream_input = Gapic::StreamInput.new
      client.client_garbage stream_input do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Use enumerable object with hash and protobuf object with options.
      request_hash = { garbage: garbage }
      request_proto = So::Much::Trash::ListGarbageRequest.new garbage: garbage
      enum_input = [request_hash, request_proto].to_enum
      client.client_garbage enum_input, grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common) with options.
      request_hash = { garbage: garbage }
      request_proto = So::Much::Trash::ListGarbageRequest.new garbage: garbage
      stream_input = Gapic::StreamInput.new
      client.client_garbage stream_input, grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Verify method calls
      assert_equal 4, client_garbage_client_stub.call_rpc_count
      client_garbage_client_stub.requests.each do |request|
        request.to_a.each do |r|
          assert_kind_of So::Much::Trash::ListGarbageRequest, r
          assert_equal "hello world", r.garbage
        end
      end
    end
  end

  def test_server_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::GarbageItem.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a server streaming method.
    garbage = "hello world"

    server_garbage_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :server_garbage, name
      assert_kind_of So::Much::Trash::ListGarbageRequest, request
      assert_equal "hello world", request.garbage
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, server_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.server_garbage({ garbage: garbage }) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of So::Much::Trash::GarbageItem, r
        end
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.server_garbage garbage: garbage do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of So::Much::Trash::GarbageItem, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.server_garbage So::Much::Trash::ListGarbageRequest.new(garbage: garbage) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of So::Much::Trash::GarbageItem, r
        end
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.server_garbage({ garbage: garbage }, grpc_options) do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of So::Much::Trash::GarbageItem, r
        end
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.server_garbage So::Much::Trash::ListGarbageRequest.new(garbage: garbage), grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of So::Much::Trash::GarbageItem, r
        end
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, server_garbage_client_stub.call_rpc_count
    end
  end

  def test_bidi_garbage
    # Create GRPC objects.
    grpc_response = So::Much::Trash::GarbageItem.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a bidi streaming method.
    garbage = "hello world"

    bidi_garbage_client_stub = ClientStub.new [grpc_response].to_enum, grpc_operation do |name, request, options:|
      assert_equal :bidi_garbage, name
      assert_kind_of Enumerable, request
      refute_nil options
      request
    end

    Gapic::ServiceStub.stub :new, bidi_garbage_client_stub do
      # Create client
      client = So::Much::Trash::GarbageService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use enumerable object with hash and protobuf object.
      request_hash = { garbage: garbage }
      request_proto = So::Much::Trash::ListGarbageRequest.new garbage: garbage
      enum_input = [request_hash, request_proto].to_enum
      client.bidi_garbage enum_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of So::Much::Trash::GarbageItem, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common).
      request_hash = { garbage: garbage }
      request_proto = So::Much::Trash::ListGarbageRequest.new garbage: garbage
      stream_input = Gapic::StreamInput.new
      client.bidi_garbage stream_input do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of So::Much::Trash::GarbageItem, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Use enumerable object with hash and protobuf object with options.
      request_hash = { garbage: garbage }
      request_proto = So::Much::Trash::ListGarbageRequest.new garbage: garbage
      enum_input = [request_hash, request_proto].to_enum
      client.bidi_garbage enum_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of So::Much::Trash::GarbageItem, r
        end
        assert_equal grpc_operation, operation
      end

      # Use stream input object (from gapic-common) with options.
      request_hash = { garbage: garbage }
      request_proto = So::Much::Trash::ListGarbageRequest.new garbage: garbage
      stream_input = Gapic::StreamInput.new
      client.bidi_garbage stream_input, grpc_options do |response, operation|
        assert_kind_of Enumerable, response
        response.to_a.each do |r|
          assert_kind_of So::Much::Trash::GarbageItem, r
        end
        assert_equal grpc_operation, operation
      end
      stream_input << request_hash
      stream_input << request_proto
      stream_input.close

      # Verify method calls
      assert_equal 4, bidi_garbage_client_stub.call_rpc_count
      bidi_garbage_client_stub.requests.each do |request|
        request.to_a.each do |r|
          assert_kind_of So::Much::Trash::ListGarbageRequest, r
          assert_equal "hello world", r.garbage
        end
      end
    end
  end
end