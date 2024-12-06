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

require "testing/nonstandard_lro_grpc/nonstandard_lro_grpc_pb"
require "testing/nonstandard_lro_grpc/plain_lro_provider/rest/service_stub"
require "google/cloud/location/rest"

module Testing
  module NonstandardLroGrpc
    module PlainLroProvider
      module Rest
        ##
        # REST client for the PlainLroProvider service.
        #
        class Client
          # @private
          API_VERSION = ""

          # @private
          DEFAULT_ENDPOINT_TEMPLATE = "nonstandardlro.example.com"

          # @private
          attr_reader :plain_lro_provider_stub

          ##
          # Configure the PlainLroProvider Client class.
          #
          # See {::Testing::NonstandardLroGrpc::PlainLroProvider::Rest::Client::Configuration}
          # for a description of the configuration fields.
          #
          # @example
          #
          #   # Modify the configuration for all PlainLroProvider clients
          #   ::Testing::NonstandardLroGrpc::PlainLroProvider::Rest::Client.configure do |config|
          #     config.timeout = 10.0
          #   end
          #
          # @yield [config] Configure the Client client.
          # @yieldparam config [Client::Configuration]
          #
          # @return [Client::Configuration]
          #
          def self.configure
            @configure ||= begin
              default_config = Client::Configuration.new

              default_config
            end
            yield @configure if block_given?
            @configure
          end

          ##
          # Configure the PlainLroProvider Client instance.
          #
          # The configuration is set to the derived mode, meaning that values can be changed,
          # but structural changes (adding new fields, etc.) are not allowed. Structural changes
          # should be made on {Client.configure}.
          #
          # See {::Testing::NonstandardLroGrpc::PlainLroProvider::Rest::Client::Configuration}
          # for a description of the configuration fields.
          #
          # @yield [config] Configure the Client client.
          # @yieldparam config [Client::Configuration]
          #
          # @return [Client::Configuration]
          #
          def configure
            yield @config if block_given?
            @config
          end

          ##
          # The effective universe domain
          #
          # @return [String]
          #
          def universe_domain
            @plain_lro_provider_stub.universe_domain
          end

          ##
          # Create a new PlainLroProvider REST client object.
          #
          # @example
          #
          #   # Create a client using the default configuration
          #   client = ::Testing::NonstandardLroGrpc::PlainLroProvider::Rest::Client.new
          #
          #   # Create a client using a custom configuration
          #   client = ::Testing::NonstandardLroGrpc::PlainLroProvider::Rest::Client.new do |config|
          #     config.timeout = 10.0
          #   end
          #
          # @yield [config] Configure the PlainLroProvider client.
          # @yieldparam config [Client::Configuration]
          #
          def initialize
            # Create the configuration object
            @config = Configuration.new Client.configure

            # Yield the configuration if needed
            yield @config if block_given?

            # Create credentials
            credentials = @config.credentials
            # Use self-signed JWT if the endpoint is unchanged from default,
            # but only if the default endpoint does not have a region prefix.
            enable_self_signed_jwt = @config.endpoint.nil? ||
                                     (@config.endpoint == Configuration::DEFAULT_ENDPOINT &&
                                     !@config.endpoint.split(".").first.include?("-"))
            credentials ||= Credentials.default scope: @config.scope,
                                                enable_self_signed_jwt: enable_self_signed_jwt
            if credentials.is_a?(::String) || credentials.is_a?(::Hash)
              credentials = Credentials.new credentials, scope: @config.scope
            end

            @quota_project_id = @config.quota_project
            @quota_project_id ||= credentials.quota_project_id if credentials.respond_to? :quota_project_id

            @plain_lro_provider_stub = ::Testing::NonstandardLroGrpc::PlainLroProvider::Rest::ServiceStub.new(
              endpoint: @config.endpoint,
              endpoint_template: DEFAULT_ENDPOINT_TEMPLATE,
              universe_domain: @config.universe_domain,
              credentials: credentials,
              logger: @config.logger
            )

            @plain_lro_provider_stub.logger(stub: true)&.info do |entry|
              entry.set_system_name
              entry.set_service
              entry.message = "Created client for #{entry.service}"
              entry.set_credentials_fields credentials
              entry.set "customEndpoint", @config.endpoint if @config.endpoint
              entry.set "defaultTimeout", @config.timeout if @config.timeout
              entry.set "quotaProject", @quota_project_id if @quota_project_id
            end

            @location_client = Google::Cloud::Location::Locations::Rest::Client.new do |config|
              config.credentials = credentials
              config.quota_project = @quota_project_id
              config.endpoint = @plain_lro_provider_stub.endpoint
              config.universe_domain = @plain_lro_provider_stub.universe_domain
              config.bindings_override = @config.bindings_override
              config.logger = @plain_lro_provider_stub.logger if config.respond_to? :logger=
            end
          end

          ##
          # Get the associated client for mix-in of the Locations.
          #
          # @return [Google::Cloud::Location::Locations::Rest::Client]
          #
          attr_reader :location_client

          ##
          # The logger used for request/response debug logging.
          #
          # @return [Logger]
          #
          def logger
            @plain_lro_provider_stub.logger
          end

          # Service calls

          ##
          # @overload get(request, options = nil)
          #   Pass arguments to `get` via a request object, either of type
          #   {::Testing::NonstandardLroGrpc::LroGetRequest} or an equivalent Hash.
          #
          #   @param request [::Testing::NonstandardLroGrpc::LroGetRequest, ::Hash]
          #     A request object representing the call parameters. Required. To specify no
          #     parameters, or to keep all the default parameter values, pass an empty Hash.
          #   @param options [::Gapic::CallOptions, ::Hash]
          #     Overrides the default settings for this call, e.g, timeout, retries etc. Optional.
          #
          # @overload get(initial_request_id: nil, lro_name: nil)
          #   Pass arguments to `get` via keyword arguments. Note that at
          #   least one keyword argument is required. To specify no parameters, or to keep all
          #   the default parameter values, pass an empty Hash as a request object (see above).
          #
          #   @param initial_request_id [::String]
          #   @param lro_name [::String]
          # @yield [result, operation] Access the result along with the TransportOperation object
          # @yieldparam result [::Testing::NonstandardLroGrpc::NonstandardOperation]
          # @yieldparam operation [::Gapic::Rest::TransportOperation]
          #
          # @return [::Testing::NonstandardLroGrpc::NonstandardOperation]
          #
          # @raise [::Gapic::Rest::Error] if the REST call is aborted.
          #
          # @example Basic example
          #   require "testing/nonstandard_lro_grpc"
          #
          #   # Create a client object. The client can be reused for multiple calls.
          #   client = Testing::NonstandardLroGrpc::PlainLroProvider::Rest::Client.new
          #
          #   # Create a request. To set request fields, pass in keyword arguments.
          #   request = Testing::NonstandardLroGrpc::LroGetRequest.new
          #
          #   # Call the get method.
          #   result = client.get request
          #
          #   # The returned object is of type Testing::NonstandardLroGrpc::NonstandardOperation.
          #   p result
          #
          def get request, options = nil
            raise ::ArgumentError, "request must be provided" if request.nil?

            request = ::Gapic::Protobuf.coerce request, to: ::Testing::NonstandardLroGrpc::LroGetRequest

            # Converts hash and nil to an options object
            options = ::Gapic::CallOptions.new(**options.to_h) if options.respond_to? :to_h

            # Customize the options with defaults
            call_metadata = @config.rpcs.get.metadata.to_h

            # Set x-goog-api-client, x-goog-user-project and x-goog-api-version headers
            call_metadata[:"x-goog-api-client"] ||= ::Gapic::Headers.x_goog_api_client \
              lib_name: @config.lib_name, lib_version: @config.lib_version,
              gapic_version: ::Testing::VERSION,
              transports_version_send: [:rest]

            call_metadata[:"x-goog-api-version"] = API_VERSION unless API_VERSION.empty?
            call_metadata[:"x-goog-user-project"] = @quota_project_id if @quota_project_id

            options.apply_defaults timeout:      @config.rpcs.get.timeout,
                                   metadata:     call_metadata,
                                   retry_policy: @config.rpcs.get.retry_policy

            options.apply_defaults timeout:      @config.timeout,
                                   metadata:     @config.metadata,
                                   retry_policy: @config.retry_policy

            @plain_lro_provider_stub.get request, options do |result, operation|
              yield result, operation if block_given?
            end
          rescue ::Faraday::Error => e
            raise ::Gapic::Rest::Error.wrap_faraday_error e
          end

          ##
          # Configuration class for the PlainLroProvider REST API.
          #
          # This class represents the configuration for PlainLroProvider REST,
          # providing control over timeouts, retry behavior, logging, transport
          # parameters, and other low-level controls. Certain parameters can also be
          # applied individually to specific RPCs. See
          # {::Testing::NonstandardLroGrpc::PlainLroProvider::Rest::Client::Configuration::Rpcs}
          # for a list of RPCs that can be configured independently.
          #
          # Configuration can be applied globally to all clients, or to a single client
          # on construction.
          #
          # @example
          #
          #   # Modify the global config, setting the timeout for
          #   # get to 20 seconds,
          #   # and all remaining timeouts to 10 seconds.
          #   ::Testing::NonstandardLroGrpc::PlainLroProvider::Rest::Client.configure do |config|
          #     config.timeout = 10.0
          #     config.rpcs.get.timeout = 20.0
          #   end
          #
          #   # Apply the above configuration only to a new client.
          #   client = ::Testing::NonstandardLroGrpc::PlainLroProvider::Rest::Client.new do |config|
          #     config.timeout = 10.0
          #     config.rpcs.get.timeout = 20.0
          #   end
          #
          # @!attribute [rw] endpoint
          #   A custom service endpoint, as a hostname or hostname:port. The default is
          #   nil, indicating to use the default endpoint in the current universe domain.
          #   @return [::String,nil]
          # @!attribute [rw] credentials
          #   Credentials to send with calls. You may provide any of the following types:
          #    *  (`String`) The path to a service account key file in JSON format
          #    *  (`Hash`) A service account key as a Hash
          #    *  (`Google::Auth::Credentials`) A googleauth credentials object
          #       (see the [googleauth docs](https://rubydoc.info/gems/googleauth/Google/Auth/Credentials))
          #    *  (`Signet::OAuth2::Client`) A signet oauth2 client object
          #       (see the [signet docs](https://rubydoc.info/gems/signet/Signet/OAuth2/Client))
          #    *  (`nil`) indicating no credentials
          #   @return [::Object]
          # @!attribute [rw] scope
          #   The OAuth scopes
          #   @return [::Array<::String>]
          # @!attribute [rw] lib_name
          #   The library name as recorded in instrumentation and logging
          #   @return [::String]
          # @!attribute [rw] lib_version
          #   The library version as recorded in instrumentation and logging
          #   @return [::String]
          # @!attribute [rw] timeout
          #   The call timeout in seconds.
          #   @return [::Numeric]
          # @!attribute [rw] metadata
          #   Additional headers to be sent with the call.
          #   @return [::Hash{::Symbol=>::String}]
          # @!attribute [rw] retry_policy
          #   The retry policy. The value is a hash with the following keys:
          #    *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
          #    *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
          #    *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
          #    *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
          #       trigger a retry.
          #   @return [::Hash]
          # @!attribute [rw] quota_project
          #   A separate project against which to charge quota.
          #   @return [::String]
          # @!attribute [rw] universe_domain
          #   The universe domain within which to make requests. This determines the
          #   default endpoint URL. The default value of nil uses the environment
          #   universe (usually the default "googleapis.com" universe).
          #   @return [::String,nil]
          # @!attribute [rw] logger
          #   A custom logger to use for request/response debug logging, or the value
          #   `:default` (the default) to construct a default logger, or `nil` to
          #   explicitly disable logging.
          #   @return [::Logger,:default,nil]
          #
          class Configuration
            extend ::Gapic::Config

            # @private
            # The endpoint specific to the default "googleapis.com" universe. Deprecated.
            DEFAULT_ENDPOINT = "nonstandardlro.example.com"

            config_attr :endpoint,      nil, ::String, nil
            config_attr :credentials,   nil do |value|
              allowed = [::String, ::Hash, ::Proc, ::Symbol, ::Google::Auth::Credentials, ::Signet::OAuth2::Client, nil]
              allowed.any? { |klass| klass === value }
            end
            config_attr :scope,         nil, ::String, ::Array, nil
            config_attr :lib_name,      nil, ::String, nil
            config_attr :lib_version,   nil, ::String, nil
            config_attr :timeout,       nil, ::Numeric, nil
            config_attr :metadata,      nil, ::Hash, nil
            config_attr :retry_policy,  nil, ::Hash, ::Proc, nil
            config_attr :quota_project, nil, ::String, nil
            config_attr :universe_domain, nil, ::String, nil

            # @private
            # Overrides for http bindings for the RPCs of this service
            # are only used when this service is used as mixin, and only
            # by the host service.
            # @return [::Hash{::Symbol=>::Array<::Gapic::Rest::GrpcTranscoder::HttpBinding>}]
            config_attr :bindings_override, {}, ::Hash, nil
            config_attr :logger, :default, ::Logger, nil, :default

            # @private
            def initialize parent_config = nil
              @parent_config = parent_config unless parent_config.nil?

              yield self if block_given?
            end

            ##
            # Configurations for individual RPCs
            # @return [Rpcs]
            #
            def rpcs
              @rpcs ||= begin
                parent_rpcs = nil
                parent_rpcs = @parent_config.rpcs if defined?(@parent_config) && @parent_config.respond_to?(:rpcs)
                Rpcs.new parent_rpcs
              end
            end

            ##
            # Configuration RPC class for the PlainLroProvider API.
            #
            # Includes fields providing the configuration for each RPC in this service.
            # Each configuration object is of type `Gapic::Config::Method` and includes
            # the following configuration fields:
            #
            #  *  `timeout` (*type:* `Numeric`) - The call timeout in seconds
            #  *  `metadata` (*type:* `Hash{Symbol=>String}`) - Additional headers
            #  *  `retry_policy (*type:* `Hash`) - The retry policy. The policy fields
            #     include the following keys:
            #      *  `:initial_delay` (*type:* `Numeric`) - The initial delay in seconds.
            #      *  `:max_delay` (*type:* `Numeric`) - The max delay in seconds.
            #      *  `:multiplier` (*type:* `Numeric`) - The incremental backoff multiplier.
            #      *  `:retry_codes` (*type:* `Array<String>`) - The error codes that should
            #         trigger a retry.
            #
            class Rpcs
              ##
              # RPC-specific configuration for `get`
              # @return [::Gapic::Config::Method]
              #
              attr_reader :get

              # @private
              def initialize parent_rpcs = nil
                get_config = parent_rpcs.get if parent_rpcs.respond_to? :get
                @get = ::Gapic::Config::Method.new get_config

                yield self if block_given?
              end
            end
          end
        end
      end
    end
  end
end
