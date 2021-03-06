=begin
Ruby InsightVM API Client

OpenAPI spec version: 3
Contact: support@rapid7.com
Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.0

=end

require 'date'

module Rapid7VmConsole
  # 
  class Asset
    # All addresses discovered on the asset.
    attr_accessor :addresses

    # Whether the asset has been assessed for policies at least once.
    attr_accessor :assessed_for_policies

    # Whether the asset has been assessed for vulnerabilities at least once.
    attr_accessor :assessed_for_vulnerabilities

    # Configuration key-values pairs enumerated on the asset.
    attr_accessor :configurations

    # The databases enumerated on the asset.
    attr_accessor :databases

    # The files discovered with searching on the asset.
    attr_accessor :files

    # The history of changes to the asset over time.
    attr_accessor :history

    # The primary host name (local or FQDN) of the asset.
    attr_accessor :host_name

    # All host names or aliases discovered on the asset.
    attr_accessor :host_names

    # The identifier of the asset.
    attr_accessor :id

    # Unique identifiers found on the asset, such as hardware or operating system identifiers.
    attr_accessor :ids

    # The primary IPv4 or IPv6 address of the asset.
    attr_accessor :ip

    # Hypermedia links to corresponding or related resources.
    attr_accessor :links

    # The primary Media Access Control (MAC) address of the asset. The format is six groups of two hexadecimal digits separated by colons.
    attr_accessor :mac

    # The full description of the operating system of the asset.
    attr_accessor :os

    # The details of the operating system of the asset.
    attr_accessor :os_fingerprint

    # The base risk score of the asset.
    attr_accessor :raw_risk_score

    # The risk score (with criticality adjustments) of the asset.
    attr_accessor :risk_score

    # The services discovered on the asset.
    attr_accessor :services

    # The software discovered on the asset.
    attr_accessor :software

    # The type of asset.
    attr_accessor :type

    # The group accounts enumerated on the asset.
    attr_accessor :user_groups

    # The user accounts enumerated on the asset.
    attr_accessor :users

    # Summary information for vulnerabilities on the asset.
    attr_accessor :vulnerabilities

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'addresses' => :'addresses',
        :'assessed_for_policies' => :'assessedForPolicies',
        :'assessed_for_vulnerabilities' => :'assessedForVulnerabilities',
        :'configurations' => :'configurations',
        :'databases' => :'databases',
        :'files' => :'files',
        :'history' => :'history',
        :'host_name' => :'hostName',
        :'host_names' => :'hostNames',
        :'id' => :'id',
        :'ids' => :'ids',
        :'ip' => :'ip',
        :'links' => :'links',
        :'mac' => :'mac',
        :'os' => :'os',
        :'os_fingerprint' => :'osFingerprint',
        :'raw_risk_score' => :'rawRiskScore',
        :'risk_score' => :'riskScore',
        :'services' => :'services',
        :'software' => :'software',
        :'type' => :'type',
        :'user_groups' => :'userGroups',
        :'users' => :'users',
        :'vulnerabilities' => :'vulnerabilities'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'addresses' => :'Array<Address>',
        :'assessed_for_policies' => :'BOOLEAN',
        :'assessed_for_vulnerabilities' => :'BOOLEAN',
        :'configurations' => :'Array<Configuration>',
        :'databases' => :'Array<Database>',
        :'files' => :'Array<File>',
        :'history' => :'Array<AssetHistory>',
        :'host_name' => :'String',
        :'host_names' => :'Array<HostName>',
        :'id' => :'Integer',
        :'ids' => :'Array<UniqueId>',
        :'ip' => :'String',
        :'links' => :'Array<Link>',
        :'mac' => :'String',
        :'os' => :'String',
        :'os_fingerprint' => :'OperatingSystem',
        :'raw_risk_score' => :'Float',
        :'risk_score' => :'Float',
        :'services' => :'Array<Service>',
        :'software' => :'Array<Software>',
        :'type' => :'String',
        :'user_groups' => :'Array<GroupAccount>',
        :'users' => :'Array<UserAccount>',
        :'vulnerabilities' => :'AssetVulnerabilities'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'addresses')
        if (value = attributes[:'addresses']).is_a?(Array)
          self.addresses = value
        end
      end

      if attributes.has_key?(:'assessedForPolicies')
        self.assessed_for_policies = attributes[:'assessedForPolicies']
      end

      if attributes.has_key?(:'assessedForVulnerabilities')
        self.assessed_for_vulnerabilities = attributes[:'assessedForVulnerabilities']
      end

      if attributes.has_key?(:'configurations')
        if (value = attributes[:'configurations']).is_a?(Array)
          self.configurations = value
        end
      end

      if attributes.has_key?(:'databases')
        if (value = attributes[:'databases']).is_a?(Array)
          self.databases = value
        end
      end

      if attributes.has_key?(:'files')
        if (value = attributes[:'files']).is_a?(Array)
          self.files = value
        end
      end

      if attributes.has_key?(:'history')
        if (value = attributes[:'history']).is_a?(Array)
          self.history = value
        end
      end

      if attributes.has_key?(:'hostName')
        self.host_name = attributes[:'hostName']
      end

      if attributes.has_key?(:'hostNames')
        if (value = attributes[:'hostNames']).is_a?(Array)
          self.host_names = value
        end
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'ids')
        if (value = attributes[:'ids']).is_a?(Array)
          self.ids = value
        end
      end

      if attributes.has_key?(:'ip')
        self.ip = attributes[:'ip']
      end

      if attributes.has_key?(:'links')
        if (value = attributes[:'links']).is_a?(Array)
          self.links = value
        end
      end

      if attributes.has_key?(:'mac')
        self.mac = attributes[:'mac']
      end

      if attributes.has_key?(:'os')
        self.os = attributes[:'os']
      end

      if attributes.has_key?(:'osFingerprint')
        self.os_fingerprint = attributes[:'osFingerprint']
      end

      if attributes.has_key?(:'rawRiskScore')
        self.raw_risk_score = attributes[:'rawRiskScore']
      end

      if attributes.has_key?(:'riskScore')
        self.risk_score = attributes[:'riskScore']
      end

      if attributes.has_key?(:'services')
        if (value = attributes[:'services']).is_a?(Array)
          self.services = value
        end
      end

      if attributes.has_key?(:'software')
        if (value = attributes[:'software']).is_a?(Array)
          self.software = value
        end
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'userGroups')
        if (value = attributes[:'userGroups']).is_a?(Array)
          self.user_groups = value
        end
      end

      if attributes.has_key?(:'users')
        if (value = attributes[:'users']).is_a?(Array)
          self.users = value
        end
      end

      if attributes.has_key?(:'vulnerabilities')
        self.vulnerabilities = attributes[:'vulnerabilities']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      type_validator = EnumAttributeValidator.new('String', ['unknown', 'guest', 'hypervisor', 'physical', 'mobile'])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ['unknown', 'guest', 'hypervisor', 'physical', 'mobile'])
      unless validator.valid?(type)
        fail ArgumentError, 'invalid value for "type", must be one of #{validator.allowable_values}.'
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          addresses == o.addresses &&
          assessed_for_policies == o.assessed_for_policies &&
          assessed_for_vulnerabilities == o.assessed_for_vulnerabilities &&
          configurations == o.configurations &&
          databases == o.databases &&
          files == o.files &&
          history == o.history &&
          host_name == o.host_name &&
          host_names == o.host_names &&
          id == o.id &&
          ids == o.ids &&
          ip == o.ip &&
          links == o.links &&
          mac == o.mac &&
          os == o.os &&
          os_fingerprint == o.os_fingerprint &&
          raw_risk_score == o.raw_risk_score &&
          risk_score == o.risk_score &&
          services == o.services &&
          software == o.software &&
          type == o.type &&
          user_groups == o.user_groups &&
          users == o.users &&
          vulnerabilities == o.vulnerabilities
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [addresses, assessed_for_policies, assessed_for_vulnerabilities, configurations, databases, files, history, host_name, host_names, id, ids, ip, links, mac, os, os_fingerprint, raw_risk_score, risk_score, services, software, type, user_groups, users, vulnerabilities].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Rapid7VmConsole.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
