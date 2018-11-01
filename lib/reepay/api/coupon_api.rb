=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Reepay
  class CouponApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create coupon
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCoupon] :body 
    # @return [Coupon]
    def create_coupon(opts = {})
      data, _status_code, _headers = create_coupon_with_http_info(opts)
      return data
    end

    # Create coupon
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateCoupon] :body 
    # @return [Array<(Coupon, Fixnum, Hash)>] Coupon data, response status code and response headers
    def create_coupon_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponApi.create_coupon ..."
      end
      # resource path
      local_var_path = "/v1/coupon"

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
        :return_type => 'Coupon')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponApi#create_coupon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete coupon
    # 
    # @param handle Coupon handle
    # @param [Hash] opts the optional parameters
    # @return [Coupon]
    def delete_coupon(handle, opts = {})
      data, _status_code, _headers = delete_coupon_with_http_info(handle, opts)
      return data
    end

    # Delete coupon
    # 
    # @param handle Coupon handle
    # @param [Hash] opts the optional parameters
    # @return [Array<(Coupon, Fixnum, Hash)>] Coupon data, response status code and response headers
    def delete_coupon_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponApi.delete_coupon ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling CouponApi.delete_coupon"
      end
      # resource path
      local_var_path = "/v1/coupon/{handle}".sub('{' + 'handle' + '}', handle.to_s)

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Coupon')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponApi#delete_coupon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Expire coupon
    # 
    # @param handle Coupon handle
    # @param [Hash] opts the optional parameters
    # @return [Coupon]
    def expire_coupon(handle, opts = {})
      data, _status_code, _headers = expire_coupon_with_http_info(handle, opts)
      return data
    end

    # Expire coupon
    # 
    # @param handle Coupon handle
    # @param [Hash] opts the optional parameters
    # @return [Array<(Coupon, Fixnum, Hash)>] Coupon data, response status code and response headers
    def expire_coupon_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponApi.expire_coupon ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling CouponApi.expire_coupon"
      end
      # resource path
      local_var_path = "/v1/coupon/{handle}/expire".sub('{' + 'handle' + '}', handle.to_s)

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
        :return_type => 'Coupon')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponApi#expire_coupon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get coupon
    # 
    # @param handle Coupon handle
    # @param [Hash] opts the optional parameters
    # @return [Coupon]
    def get_coupon(handle, opts = {})
      data, _status_code, _headers = get_coupon_with_http_info(handle, opts)
      return data
    end

    # Get coupon
    # 
    # @param handle Coupon handle
    # @param [Hash] opts the optional parameters
    # @return [Array<(Coupon, Fixnum, Hash)>] Coupon data, response status code and response headers
    def get_coupon_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponApi.get_coupon ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling CouponApi.get_coupon"
      end
      # resource path
      local_var_path = "/v1/coupon/{handle}".sub('{' + 'handle' + '}', handle.to_s)

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
        :return_type => 'Coupon')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponApi#get_coupon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of coupons
    # 
    # @param page Page number to get
    # @param size Page size to use
    # @param search Optional search expression
    # @param sort Optional sorting expression
    # @param [Hash] opts the optional parameters
    # @return [CouponSearch]
    def get_coupons(page, size, search, sort, opts = {})
      data, _status_code, _headers = get_coupons_with_http_info(page, size, search, sort, opts)
      return data
    end

    # Get list of coupons
    # 
    # @param page Page number to get
    # @param size Page size to use
    # @param search Optional search expression
    # @param sort Optional sorting expression
    # @param [Hash] opts the optional parameters
    # @return [Array<(CouponSearch, Fixnum, Hash)>] CouponSearch data, response status code and response headers
    def get_coupons_with_http_info(page, size, search, sort, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponApi.get_coupons ..."
      end
      # verify the required parameter 'page' is set
      if @api_client.config.client_side_validation && page.nil?
        fail ArgumentError, "Missing the required parameter 'page' when calling CouponApi.get_coupons"
      end
      if @api_client.config.client_side_validation && page > 10000000
        fail ArgumentError, 'invalid value for "page" when calling CouponApi.get_coupons, must be smaller than or equal to 10000000.'
      end

      if @api_client.config.client_side_validation && page < 1
        fail ArgumentError, 'invalid value for "page" when calling CouponApi.get_coupons, must be greater than or equal to 1.'
      end

      # verify the required parameter 'size' is set
      if @api_client.config.client_side_validation && size.nil?
        fail ArgumentError, "Missing the required parameter 'size' when calling CouponApi.get_coupons"
      end
      if @api_client.config.client_side_validation && size > 100
        fail ArgumentError, 'invalid value for "size" when calling CouponApi.get_coupons, must be smaller than or equal to 100.'
      end

      if @api_client.config.client_side_validation && size < 1
        fail ArgumentError, 'invalid value for "size" when calling CouponApi.get_coupons, must be greater than or equal to 1.'
      end

      # verify the required parameter 'search' is set
      if @api_client.config.client_side_validation && search.nil?
        fail ArgumentError, "Missing the required parameter 'search' when calling CouponApi.get_coupons"
      end
      # verify the required parameter 'sort' is set
      if @api_client.config.client_side_validation && sort.nil?
        fail ArgumentError, "Missing the required parameter 'sort' when calling CouponApi.get_coupons"
      end
      # resource path
      local_var_path = "/v1/coupon"

      # query parameters
      query_params = {}
      query_params[:'page'] = page
      query_params[:'size'] = size
      query_params[:'search'] = search
      query_params[:'sort'] = sort

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
        :return_type => 'CouponSearch')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponApi#get_coupons\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update coupon
    # 
    # @param handle Coupon handle
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateCoupon] :body 
    # @return [Coupon]
    def update_coupon(handle, opts = {})
      data, _status_code, _headers = update_coupon_with_http_info(handle, opts)
      return data
    end

    # Update coupon
    # 
    # @param handle Coupon handle
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateCoupon] :body 
    # @return [Array<(Coupon, Fixnum, Hash)>] Coupon data, response status code and response headers
    def update_coupon_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponApi.update_coupon ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling CouponApi.update_coupon"
      end
      # resource path
      local_var_path = "/v1/coupon/{handle}".sub('{' + 'handle' + '}', handle.to_s)

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
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Coupon')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponApi#update_coupon\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Validate coupon
    # 
    # @param code Coupon code
    # @param [Hash] opts the optional parameters
    # @option opts [String] :plan Optional plan to validate against
    # @option opts [String] :customer Optional customer to validate against
    # @return [Coupon]
    def validate_code(code, opts = {})
      data, _status_code, _headers = validate_code_with_http_info(code, opts)
      return data
    end

    # Validate coupon
    # 
    # @param code Coupon code
    # @param [Hash] opts the optional parameters
    # @option opts [String] :plan Optional plan to validate against
    # @option opts [String] :customer Optional customer to validate against
    # @return [Array<(Coupon, Fixnum, Hash)>] Coupon data, response status code and response headers
    def validate_code_with_http_info(code, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: CouponApi.validate_code ..."
      end
      # verify the required parameter 'code' is set
      if @api_client.config.client_side_validation && code.nil?
        fail ArgumentError, "Missing the required parameter 'code' when calling CouponApi.validate_code"
      end
      # resource path
      local_var_path = "/v1/coupon/code/validate"

      # query parameters
      query_params = {}
      query_params[:'code'] = code
      query_params[:'plan'] = opts[:'plan'] if !opts[:'plan'].nil?
      query_params[:'customer'] = opts[:'customer'] if !opts[:'customer'].nil?

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
        :return_type => 'Coupon')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CouponApi#validate_code\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
