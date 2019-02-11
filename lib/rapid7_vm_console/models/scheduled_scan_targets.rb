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
  class ScheduledScanTargets
    # Assets associated with these asset groups will be excluded from the site's scan.
    attr_accessor :excluded_asset_groups

    # Addresses to be excluded from the site's scan. Each address is a string that can represent either a hostname, ipv4 address, ipv4 address range, ipv6 address, or CIDR notation.
    attr_accessor :excluded_targets

    # Allows users to specify a subset of the site's included asset groups to be included in the scan. If the property is defined, then at least one valid already defined as an included asset group must be specified.
    attr_accessor :included_asset_groups

    # Allows users to specify a subset of the site's scan targets to be included in the scan. If the property is defined, then at least one address must be specified.
    attr_accessor :included_targets

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'excluded_asset_groups' => :'excludedAssetGroups',
        :'excluded_targets' => :'excludedTargets',
        :'included_asset_groups' => :'includedAssetGroups',
        :'included_targets' => :'includedTargets'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'excluded_asset_groups' => :'ExcludedAssetGroups',
        :'excluded_targets' => :'ExcludedScanTargets',
        :'included_asset_groups' => :'IncludedAssetGroups',
        :'included_targets' => :'IncludedScanTargets'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'excludedAssetGroups')
        self.excluded_asset_groups = attributes[:'excludedAssetGroups']
      end

      if attributes.has_key?(:'excludedTargets')
        self.excluded_targets = attributes[:'excludedTargets']
      end

      if attributes.has_key?(:'includedAssetGroups')
        self.included_asset_groups = attributes[:'includedAssetGroups']
      end

      if attributes.has_key?(:'includedTargets')
        self.included_targets = attributes[:'includedTargets']
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
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          excluded_asset_groups == o.excluded_asset_groups &&
          excluded_targets == o.excluded_targets &&
          included_asset_groups == o.included_asset_groups &&
          included_targets == o.included_targets
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [excluded_asset_groups, excluded_targets, included_asset_groups, included_targets].hash
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
