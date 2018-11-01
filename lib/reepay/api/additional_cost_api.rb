=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Reepay
  class AdditionalCostApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel pending additional cost
    # 
    # @param handle Additonal cost handle
    # @param [Hash] opts the optional parameters
    # @return [AdditionalCost]
    def cancel_additional_cost(handle, opts = {})
      data, _status_code, _headers = cancel_additional_cost_with_http_info(handle, opts)
      return data
    end

    # Cancel pending additional cost
    # 
    # @param handle Additonal cost handle
    # @param [Hash] opts the optional parameters
    # @return [Array<(AdditionalCost, Fixnum, Hash)>] AdditionalCost data, response status code and response headers
    def cancel_additional_cost_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdditionalCostApi.cancel_additional_cost ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling AdditionalCostApi.cancel_additional_cost"
      end
      # resource path
      local_var_path = "/v1/additional_cost/{handle}/cancel".sub('{' + 'handle' + '}', handle.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AdditionalCost')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdditionalCostApi#cancel_additional_cost\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create additional cost
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateAdditionalCost] :body 
    # @return [AdditionalCost]
    def create_additional_cost_json(opts = {})
      data, _status_code, _headers = create_additional_cost_json_with_http_info(opts)
      return data
    end

    # Create additional cost
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateAdditionalCost] :body 
    # @return [Array<(AdditionalCost, Fixnum, Hash)>] AdditionalCost data, response status code and response headers
    def create_additional_cost_json_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdditionalCostApi.create_additional_cost_json ..."
      end
      # resource path
      local_var_path = "/v1/additional_cost"

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'body'])
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AdditionalCost')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdditionalCostApi#create_additional_cost_json\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get additional cost
    # 
    # @param handle Additonal cost handle
    # @param [Hash] opts the optional parameters
    # @return [AdditionalCost]
    def get_additional_cost(handle, opts = {})
      data, _status_code, _headers = get_additional_cost_with_http_info(handle, opts)
      return data
    end

    # Get additional cost
    # 
    # @param handle Additonal cost handle
    # @param [Hash] opts the optional parameters
    # @return [Array<(AdditionalCost, Fixnum, Hash)>] AdditionalCost data, response status code and response headers
    def get_additional_cost_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdditionalCostApi.get_additional_cost ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling AdditionalCostApi.get_additional_cost"
      end
      # resource path
      local_var_path = "/v1/additional_cost/{handle}".sub('{' + 'handle' + '}', handle.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'AdditionalCost')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdditionalCostApi#get_additional_cost\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get additional costs for subscription
    # 
    # @param handle Subscription handle
    # @param [Hash] opts the optional parameters
    # @return [Array<AdditionalCost>]
    def get_additional_costs(handle, opts = {})
      data, _status_code, _headers = get_additional_costs_with_http_info(handle, opts)
      return data
    end

    # Get additional costs for subscription
    # 
    # @param handle Subscription handle
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<AdditionalCost>, Fixnum, Hash)>] Array<AdditionalCost> data, response status code and response headers
    def get_additional_costs_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: AdditionalCostApi.get_additional_costs ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling AdditionalCostApi.get_additional_costs"
      end
      # resource path
      local_var_path = "/v1/additional_cost/subscription/{handle}".sub('{' + 'handle' + '}', handle.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['basicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Array<AdditionalCost>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AdditionalCostApi#get_additional_costs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end