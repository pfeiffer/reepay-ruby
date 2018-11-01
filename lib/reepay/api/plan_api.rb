=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require "uri"

module Reepay
  class PlanApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Create plan
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSubscriptionPlan] :body 
    # @return [Plan]
    def create_plan_json(opts = {})
      data, _status_code, _headers = create_plan_json_with_http_info(opts)
      return data
    end

    # Create plan
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [CreateSubscriptionPlan] :body 
    # @return [Array<(Plan, Fixnum, Hash)>] Plan data, response status code and response headers
    def create_plan_json_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanApi.create_plan_json ..."
      end
      # resource path
      local_var_path = "/v1/plan"

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
        :return_type => 'Plan')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanApi#create_plan_json\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete plan
    # 
    # @param handle Subscription plan handle
    # @param [Hash] opts the optional parameters
    # @return [Plan]
    def delete_plan(handle, opts = {})
      data, _status_code, _headers = delete_plan_with_http_info(handle, opts)
      return data
    end

    # Delete plan
    # 
    # @param handle Subscription plan handle
    # @param [Hash] opts the optional parameters
    # @return [Array<(Plan, Fixnum, Hash)>] Plan data, response status code and response headers
    def delete_plan_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanApi.delete_plan ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling PlanApi.delete_plan"
      end
      # resource path
      local_var_path = "/v1/plan/{handle}".sub('{' + 'handle' + '}', handle.to_s)

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
        :return_type => 'Plan')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanApi#delete_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get plan
    # 
    # @param handle Plan handle
    # @param [Hash] opts the optional parameters
    # @return [Plan]
    def get_current_plan(handle, opts = {})
      data, _status_code, _headers = get_current_plan_with_http_info(handle, opts)
      return data
    end

    # Get plan
    # 
    # @param handle Plan handle
    # @param [Hash] opts the optional parameters
    # @return [Array<(Plan, Fixnum, Hash)>] Plan data, response status code and response headers
    def get_current_plan_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanApi.get_current_plan ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling PlanApi.get_current_plan"
      end
      # resource path
      local_var_path = "/v1/plan/{handle}/current".sub('{' + 'handle' + '}', handle.to_s)

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
        :return_type => 'Plan')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanApi#get_current_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get plan version
    # 
    # @param handle Plan handle
    # @param version Plan version
    # @param [Hash] opts the optional parameters
    # @return [Plan]
    def get_plan(handle, version, opts = {})
      data, _status_code, _headers = get_plan_with_http_info(handle, version, opts)
      return data
    end

    # Get plan version
    # 
    # @param handle Plan handle
    # @param version Plan version
    # @param [Hash] opts the optional parameters
    # @return [Array<(Plan, Fixnum, Hash)>] Plan data, response status code and response headers
    def get_plan_with_http_info(handle, version, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanApi.get_plan ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling PlanApi.get_plan"
      end
      # verify the required parameter 'version' is set
      if @api_client.config.client_side_validation && version.nil?
        fail ArgumentError, "Missing the required parameter 'version' when calling PlanApi.get_plan"
      end
      # resource path
      local_var_path = "/v1/plan/{handle}/{version}".sub('{' + 'handle' + '}', handle.to_s).sub('{' + 'version' + '}', version.to_s)

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
        :return_type => 'Plan')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanApi#get_plan\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of plan versions
    # 
    # @param handle Plan handle
    # @param [Hash] opts the optional parameters
    # @return [Array<Plan>]
    def get_plans(handle, opts = {})
      data, _status_code, _headers = get_plans_with_http_info(handle, opts)
      return data
    end

    # Get list of plan versions
    # 
    # @param handle Plan handle
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Plan>, Fixnum, Hash)>] Array<Plan> data, response status code and response headers
    def get_plans_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanApi.get_plans ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling PlanApi.get_plans"
      end
      # resource path
      local_var_path = "/v1/plan/{handle}".sub('{' + 'handle' + '}', handle.to_s)

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
        :return_type => 'Array<Plan>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanApi#get_plans\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get list of plans
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :only_active Get only active (default to false)
    # @return [Array<Plan>]
    def get_plans_list(opts = {})
      data, _status_code, _headers = get_plans_list_with_http_info(opts)
      return data
    end

    # Get list of plans
    # 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :only_active Get only active
    # @return [Array<(Array<Plan>, Fixnum, Hash)>] Array<Plan> data, response status code and response headers
    def get_plans_list_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanApi.get_plans_list ..."
      end
      # resource path
      local_var_path = "/v1/plan"

      # query parameters
      query_params = {}
      query_params[:'only_active'] = opts[:'only_active'] if !opts[:'only_active'].nil?

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
        :return_type => 'Array<Plan>')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanApi#get_plans_list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Supersede plan
    # 
    # @param handle Plan handle
    # @param [Hash] opts the optional parameters
    # @option opts [SupersedeSubscriptionPlan] :body 
    # @return [Plan]
    def supersede_plan_json(handle, opts = {})
      data, _status_code, _headers = supersede_plan_json_with_http_info(handle, opts)
      return data
    end

    # Supersede plan
    # 
    # @param handle Plan handle
    # @param [Hash] opts the optional parameters
    # @option opts [SupersedeSubscriptionPlan] :body 
    # @return [Array<(Plan, Fixnum, Hash)>] Plan data, response status code and response headers
    def supersede_plan_json_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanApi.supersede_plan_json ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling PlanApi.supersede_plan_json"
      end
      # resource path
      local_var_path = "/v1/plan/{handle}".sub('{' + 'handle' + '}', handle.to_s)

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
        :return_type => 'Plan')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanApi#supersede_plan_json\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update plan
    # 
    # @param handle Subscription handle
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateSubscriptionPlan] :body 
    # @return [Plan]
    def update_plan_json(handle, opts = {})
      data, _status_code, _headers = update_plan_json_with_http_info(handle, opts)
      return data
    end

    # Update plan
    # 
    # @param handle Subscription handle
    # @param [Hash] opts the optional parameters
    # @option opts [UpdateSubscriptionPlan] :body 
    # @return [Array<(Plan, Fixnum, Hash)>] Plan data, response status code and response headers
    def update_plan_json_with_http_info(handle, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: PlanApi.update_plan_json ..."
      end
      # verify the required parameter 'handle' is set
      if @api_client.config.client_side_validation && handle.nil?
        fail ArgumentError, "Missing the required parameter 'handle' when calling PlanApi.update_plan_json"
      end
      # resource path
      local_var_path = "/v1/plan/{handle}".sub('{' + 'handle' + '}', handle.to_s)

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
        :return_type => 'Plan')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PlanApi#update_plan_json\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end