=begin
Ruby InsightVM API Client

OpenAPI spec version: 3
Contact: support@rapid7.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'uri'

module Rapid7VmConsole
  class PolicyOverrideApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Policy Overrides
    # Submit a policy override. The policy override can be submitted or it can be submitted and approved in a single request.
    # @param [Hash] opts the optional parameters
    # @option opts [PolicyOverride] :policy_override The specification of a policy override. Allows users to override the compliance result of a policy rule.
    # @return [CreatedReferencePolicyOverrideIDLink]
    def create_policy_override(opts = {})
      data, _status_code, _headers = create_policy_override_with_http_info(opts)
      data
    end

    # Policy Overrides
    # Submit a policy override. The policy override can be submitted or it can be submitted and approved in a single request.
    # @param [Hash] opts the optional parameters
    # @option opts [PolicyOverride] :policy_override The specification of a policy override. Allows users to override the compliance result of a policy rule.
    # @return [Array<(CreatedReferencePolicyOverrideIDLink, Fixnum, Hash)>] CreatedReferencePolicyOverrideIDLink data, response status code and response headers
    def create_policy_override_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOverrideApi.create_policy_override ...'
      end
      # resource path
      local_var_path = '/api/3/policy_overrides'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'policy_override'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'CreatedReferencePolicyOverrideIDLink')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOverrideApi#create_policy_override\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Policy Override
    # Removes a policy override created for a policy rule.
    # @param id The identifier of the policy override.
    # @param [Hash] opts the optional parameters
    # @return [Links]
    def delete_policy_override(id, opts = {})
      data, _status_code, _headers = delete_policy_override_with_http_info(id, opts)
      data
    end

    # Policy Override
    # Removes a policy override created for a policy rule.
    # @param id The identifier of the policy override.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Links, Fixnum, Hash)>] Links data, response status code and response headers
    def delete_policy_override_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOverrideApi.delete_policy_override ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PolicyOverrideApi.delete_policy_override"
      end
      # resource path
      local_var_path = '/api/3/policy_overrides/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Links')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOverrideApi#delete_policy_override\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Asset Policy Overrides
    # Retrieves policy overrides defined on policy rules for the specified asset.
    # @param id The identifier of the asset.
    # @param [Hash] opts the optional parameters
    # @return [ResourcesPolicyOverride]
    def get_asset_policy_overrides(id, opts = {})
      data, _status_code, _headers = get_asset_policy_overrides_with_http_info(id, opts)
      data
    end

    # Asset Policy Overrides
    # Retrieves policy overrides defined on policy rules for the specified asset.
    # @param id The identifier of the asset.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourcesPolicyOverride, Fixnum, Hash)>] ResourcesPolicyOverride data, response status code and response headers
    def get_asset_policy_overrides_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOverrideApi.get_asset_policy_overrides ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PolicyOverrideApi.get_asset_policy_overrides"
      end
      # resource path
      local_var_path = '/api/3/assets/{id}/policy_overrides'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'ResourcesPolicyOverride')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOverrideApi#get_asset_policy_overrides\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Policy Override
    # Retrieve the specified policy override.
    # @param id The identifier of the policy override.
    # @param [Hash] opts the optional parameters
    # @return [PolicyOverride]
    def get_policy_override(id, opts = {})
      data, _status_code, _headers = get_policy_override_with_http_info(id, opts)
      data
    end

    # Policy Override
    # Retrieve the specified policy override.
    # @param id The identifier of the policy override.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PolicyOverride, Fixnum, Hash)>] PolicyOverride data, response status code and response headers
    def get_policy_override_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOverrideApi.get_policy_override ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PolicyOverrideApi.get_policy_override"
      end
      # resource path
      local_var_path = '/api/3/policy_overrides/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PolicyOverride')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOverrideApi#get_policy_override\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Policy Override Expiration
    # Get the expiration date for a policy override.
    # @param id The identifier of the policy override.
    # @param [Hash] opts the optional parameters
    # @return [String]
    def get_policy_override_expiration(id, opts = {})
      data, _status_code, _headers = get_policy_override_expiration_with_http_info(id, opts)
      data
    end

    # Policy Override Expiration
    # Get the expiration date for a policy override.
    # @param id The identifier of the policy override.
    # @param [Hash] opts the optional parameters
    # @return [Array<(String, Fixnum, Hash)>] String data, response status code and response headers
    def get_policy_override_expiration_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOverrideApi.get_policy_override_expiration ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PolicyOverrideApi.get_policy_override_expiration"
      end
      # resource path
      local_var_path = '/api/3/policy_overrides/{id}/expires'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'String')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOverrideApi#get_policy_override_expiration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Policy Overrides
    # Retrieves policy overrides defined on policy rules.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The index of the page (zero-based) to retrieve. (default to 0)
    # @option opts [Integer] :size The number of records per page to retrieve. (default to 10)
    # @option opts [Array<String>] :sort The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
    # @return [PageOfPolicyOverride]
    def get_policy_overrides(opts = {})
      data, _status_code, _headers = get_policy_overrides_with_http_info(opts)
      data
    end

    # Policy Overrides
    # Retrieves policy overrides defined on policy rules.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page The index of the page (zero-based) to retrieve.
    # @option opts [Integer] :size The number of records per page to retrieve.
    # @option opts [Array<String>] :sort The criteria to sort the records by, in the format: &#x60;property[,ASC|DESC]&#x60;. The default sort order is ascending. Multiple sort criteria can be specified using multiple sort query parameters.
    # @return [Array<(PageOfPolicyOverride, Fixnum, Hash)>] PageOfPolicyOverride data, response status code and response headers
    def get_policy_overrides_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOverrideApi.get_policy_overrides ...'
      end
      # resource path
      local_var_path = '/api/3/policy_overrides'

      # query parameters
      query_params = {}
      query_params[:'page'] = opts[:'page'] if !opts[:'page'].nil?
      query_params[:'size'] = opts[:'size'] if !opts[:'size'].nil?
      query_params[:'sort'] = @api_client.build_collection_param(opts[:'sort'], :multi) if !opts[:'sort'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PageOfPolicyOverride')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOverrideApi#get_policy_overrides\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Policy Override Expiration
    # Set the expiration date for a policy override. This must be a valid date in the future.
    # @param id The identifier of the policy override.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expiration The date the policy override is set to expire. Date is represented in ISO 8601 format.
    # @return [Links]
    def set_policy_override_expiration(id, opts = {})
      data, _status_code, _headers = set_policy_override_expiration_with_http_info(id, opts)
      data
    end

    # Policy Override Expiration
    # Set the expiration date for a policy override. This must be a valid date in the future.
    # @param id The identifier of the policy override.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :expiration The date the policy override is set to expire. Date is represented in ISO 8601 format.
    # @return [Array<(Links, Fixnum, Hash)>] Links data, response status code and response headers
    def set_policy_override_expiration_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOverrideApi.set_policy_override_expiration ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PolicyOverrideApi.set_policy_override_expiration"
      end
      # resource path
      local_var_path = '/api/3/policy_overrides/{id}/expires'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'expiration'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'Links')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOverrideApi#set_policy_override_expiration\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Policy Override Status
    # Update the status of the specified policy override. The status can be one of the following: `\"recall\"`, `\"approve\"`, or `\"reject\"`.
    # @param id The identifier of the policy override.
    # @param status Policy Override Status
    # @param [Hash] opts the optional parameters
    # @option opts [String] :comment A comment describing the change of the policy override status.
    # @return [nil]
    def set_policy_override_status(id, status, opts = {})
      set_policy_override_status_with_http_info(id, status, opts)
      nil
    end

    # Policy Override Status
    # Update the status of the specified policy override. The status can be one of the following: &#x60;\&quot;recall\&quot;&#x60;, &#x60;\&quot;approve\&quot;&#x60;, or &#x60;\&quot;reject\&quot;&#x60;.
    # @param id The identifier of the policy override.
    # @param status Policy Override Status
    # @param [Hash] opts the optional parameters
    # @option opts [String] :comment A comment describing the change of the policy override status.
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def set_policy_override_status_with_http_info(id, status, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyOverrideApi.set_policy_override_status ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling PolicyOverrideApi.set_policy_override_status"
      end
      # verify the required parameter 'status' is set
      if @api_client.config.client_side_validation && status.nil?
        fail ArgumentError, "Missing the required parameter 'status' when calling PolicyOverrideApi.set_policy_override_status"
      end
      # verify enum value
      if @api_client.config.client_side_validation && !['recall', 'approve', 'reject'].include?(status)
        fail ArgumentError, "invalid value for 'status', must be one of recall, approve, reject"
      end
      # resource path
      local_var_path = '/api/3/policy_overrides/{id}/{status}'.sub('{' + 'id' + '}', id.to_s).sub('{' + 'status' + '}', status.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json;charset=UTF-8'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(opts[:'comment'])
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyOverrideApi#set_policy_override_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
