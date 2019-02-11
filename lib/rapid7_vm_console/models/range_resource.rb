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
  class RangeResource
    # If `from` is a custom date the interval amount between reporting periods.
    attr_accessor :every

    # The start date of the trend, which can either be a duration or a specific date and time.
    attr_accessor :from

    # If `from` is a custom date the interval between reporting periods. 
    attr_accessor :interval

    # The end date of the trend (empty if `from` is a duration).
    attr_accessor :to

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
        :'every' => :'every',
        :'from' => :'from',
        :'interval' => :'interval',
        :'to' => :'to'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'every' => :'String',
        :'from' => :'String',
        :'interval' => :'Integer',
        :'to' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'every')
        self.every = attributes[:'every']
      end

      if attributes.has_key?(:'from')
        self.from = attributes[:'from']
      end

      if attributes.has_key?(:'interval')
        self.interval = attributes[:'interval']
      end

      if attributes.has_key?(:'to')
        self.to = attributes[:'to']
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
      every_validator = EnumAttributeValidator.new('String', ['day', 'month', 'year'])
      return false unless every_validator.valid?(@every)
      from_validator = EnumAttributeValidator.new('String', ['P1Y', 'P6M', 'P3M', 'P1M', '<date>'])
      return false unless from_validator.valid?(@from)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] every Object to be assigned
    def every=(every)
      validator = EnumAttributeValidator.new('String', ['day', 'month', 'year'])
      unless validator.valid?(every)
        fail ArgumentError, 'invalid value for "every", must be one of #{validator.allowable_values}.'
      end
      @every = every
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] from Object to be assigned
    def from=(from)
      validator = EnumAttributeValidator.new('String', ['P1Y', 'P6M', 'P3M', 'P1M', '<date>'])
      unless validator.valid?(from)
        fail ArgumentError, 'invalid value for "from", must be one of #{validator.allowable_values}.'
      end
      @from = from
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          every == o.every &&
          from == o.from &&
          interval == o.interval &&
          to == o.to
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [every, from, interval, to].hash
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
