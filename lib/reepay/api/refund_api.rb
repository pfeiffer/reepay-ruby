=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Reepay
  class RefundApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create refund
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRefund] :body 
    # @return [Refund]
    def create_refund(opts = {})
      data, _status_code, _headers = create_refund_with_http_info(opts)
      return data
    end

    # Create refund
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateRefund] :body 
    # @return [Array<(Refund, Fixnum, Hash)>] Refund data, response status code and response headers
    def create_refund_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundApi.create_refund ..."
      end
      # resource path
      local_var_path = "/v1/refund"

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
        :return_type => 'Refund')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundApi#create_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get refund
    # 
    # @param id Refund id
    # @param [Hash] opts the optional parameters
    # @return [Refund]
    def get_refund(id, opts = {})
      data, _status_code, _headers = get_refund_with_http_info(id, opts)
      return data
    end

    # Get refund
    # 
    # @param id Refund id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Refund, Fixnum, Hash)>] Refund data, response status code and response headers
    def get_refund_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: RefundApi.get_refund ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling RefundApi.get_refund"
      end
      # resource path
      local_var_path = "/v1/refund/{id}".sub('{' + 'id' + '}', id.to_s)

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
        :return_type => 'Refund')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: RefundApi#get_refund\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
