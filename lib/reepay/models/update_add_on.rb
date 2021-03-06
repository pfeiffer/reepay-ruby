=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module Reepay

  class UpdateAddOn
    # Name of add-on. Will be used as order line text.
    attr_accessor :name

    # Optional description of add-on
    attr_accessor :description

    # Add-on amount
    attr_accessor :amount

    # Optional vat for add-on. Account default is used if none given.
    attr_accessor :vat

    # Whether the amount is including VAT. Default true.
    attr_accessor :amount_incl_vat

    # Whether all plans are eligible for this add-on. Defaults to false.
    attr_accessor :all_plans

    # If not `all_plans` are set to true, then the set of eligible plan handles must be defined.
    attr_accessor :eligible_plans


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'name' => :'name',
        :'description' => :'description',
        :'amount' => :'amount',
        :'vat' => :'vat',
        :'amount_incl_vat' => :'amount_incl_vat',
        :'all_plans' => :'all_plans',
        :'eligible_plans' => :'eligible_plans'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'name' => :'String',
        :'description' => :'String',
        :'amount' => :'Integer',
        :'vat' => :'Float',
        :'amount_incl_vat' => :'BOOLEAN',
        :'all_plans' => :'BOOLEAN',
        :'eligible_plans' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'vat')
        self.vat = attributes[:'vat']
      end

      if attributes.has_key?(:'amount_incl_vat')
        self.amount_incl_vat = attributes[:'amount_incl_vat']
      end

      if attributes.has_key?(:'all_plans')
        self.all_plans = attributes[:'all_plans']
      end

      if attributes.has_key?(:'eligible_plans')
        if (value = attributes[:'eligible_plans']).is_a?(Array)
          self.eligible_plans = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @amount.nil?
        invalid_properties.push("invalid value for 'amount', amount cannot be nil.")
      end

      if @amount < 0
        invalid_properties.push("invalid value for 'amount', must be greater than or equal to 0.")
      end

      if !@vat.nil? && @vat > 1
        invalid_properties.push("invalid value for 'vat', must be smaller than or equal to 1.")
      end

      if !@vat.nil? && @vat < 0
        invalid_properties.push("invalid value for 'vat', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.nil?
      return false if @amount.nil?
      return false if @amount < 0
      return false if !@vat.nil? && @vat > 1
      return false if !@vat.nil? && @vat < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, "amount cannot be nil"
      end

      if amount < 0
        fail ArgumentError, "invalid value for 'amount', must be greater than or equal to 0."
      end

      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] vat Value to be assigned
    def vat=(vat)

      if !vat.nil? && vat > 1
        fail ArgumentError, "invalid value for 'vat', must be smaller than or equal to 1."
      end

      if !vat.nil? && vat < 0
        fail ArgumentError, "invalid value for 'vat', must be greater than or equal to 0."
      end

      @vat = vat
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          name == o.name &&
          description == o.description &&
          amount == o.amount &&
          vat == o.vat &&
          amount_incl_vat == o.amount_incl_vat &&
          all_plans == o.all_plans &&
          eligible_plans == o.eligible_plans
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [name, description, amount, vat, amount_incl_vat, all_plans, eligible_plans].hash
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
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
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
        temp_model = Reepay.const_get(type).new
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
        value.compact.map{ |v| _to_hash(v) }
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
