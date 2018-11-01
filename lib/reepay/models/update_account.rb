=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module Reepay

  class UpdateAccount
    # Per organisation unique handle for the account
    attr_accessor :handle

    # Currency for the account in [ISO 4217](http://da.wikipedia.org/wiki/ISO_4217) three letter alpha code
    attr_accessor :currency

    # Account name
    attr_accessor :name

    # Account address
    attr_accessor :address

    # Account address2
    attr_accessor :address2

    # Account city
    attr_accessor :city

    # Account locale on the form 'language_country'
    attr_accessor :locale

    # Account time zone ID as abbreviation or full name. See [Wikipedia](http://en.wikipedia.org/wiki/List_of_tz_database_time_zones)
    attr_accessor :timezone

    # Account country in [ISO 3166-1 alpha-2](http://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)
    attr_accessor :country

    # Account email
    attr_accessor :email

    # Account phone
    attr_accessor :phone

    # Account vat number
    attr_accessor :vat

    # Account website
    attr_accessor :website

    # Account logo url
    attr_accessor :logo

    # Account postal code
    attr_accessor :postal_code

    # Default vat for account
    attr_accessor :default_vat


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'handle' => :'handle',
        :'currency' => :'currency',
        :'name' => :'name',
        :'address' => :'address',
        :'address2' => :'address2',
        :'city' => :'city',
        :'locale' => :'locale',
        :'timezone' => :'timezone',
        :'country' => :'country',
        :'email' => :'email',
        :'phone' => :'phone',
        :'vat' => :'vat',
        :'website' => :'website',
        :'logo' => :'logo',
        :'postal_code' => :'postal_code',
        :'default_vat' => :'default_vat'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'handle' => :'String',
        :'currency' => :'String',
        :'name' => :'String',
        :'address' => :'String',
        :'address2' => :'String',
        :'city' => :'String',
        :'locale' => :'String',
        :'timezone' => :'String',
        :'country' => :'String',
        :'email' => :'String',
        :'phone' => :'String',
        :'vat' => :'String',
        :'website' => :'String',
        :'logo' => :'String',
        :'postal_code' => :'String',
        :'default_vat' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'handle')
        self.handle = attributes[:'handle']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.has_key?(:'address')
        self.address = attributes[:'address']
      end

      if attributes.has_key?(:'address2')
        self.address2 = attributes[:'address2']
      end

      if attributes.has_key?(:'city')
        self.city = attributes[:'city']
      end

      if attributes.has_key?(:'locale')
        self.locale = attributes[:'locale']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'country')
        self.country = attributes[:'country']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.has_key?(:'vat')
        self.vat = attributes[:'vat']
      end

      if attributes.has_key?(:'website')
        self.website = attributes[:'website']
      end

      if attributes.has_key?(:'logo')
        self.logo = attributes[:'logo']
      end

      if attributes.has_key?(:'postal_code')
        self.postal_code = attributes[:'postal_code']
      end

      if attributes.has_key?(:'default_vat')
        self.default_vat = attributes[:'default_vat']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @handle.nil?
        invalid_properties.push("invalid value for 'handle', handle cannot be nil.")
      end

      if @name.nil?
        invalid_properties.push("invalid value for 'name', name cannot be nil.")
      end

      if @locale.nil?
        invalid_properties.push("invalid value for 'locale', locale cannot be nil.")
      end

      if @timezone.nil?
        invalid_properties.push("invalid value for 'timezone', timezone cannot be nil.")
      end

      if @country.nil?
        invalid_properties.push("invalid value for 'country', country cannot be nil.")
      end

      if @default_vat.nil?
        invalid_properties.push("invalid value for 'default_vat', default_vat cannot be nil.")
      end

      if @default_vat > 1
        invalid_properties.push("invalid value for 'default_vat', must be smaller than or equal to 1.")
      end

      if @default_vat < 0
        invalid_properties.push("invalid value for 'default_vat', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @handle.nil?
      return false if @name.nil?
      return false if @locale.nil?
      return false if @timezone.nil?
      return false if @country.nil?
      return false if @default_vat.nil?
      return false if @default_vat > 1
      return false if @default_vat < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] default_vat Value to be assigned
    def default_vat=(default_vat)
      if default_vat.nil?
        fail ArgumentError, "default_vat cannot be nil"
      end

      if default_vat > 1
        fail ArgumentError, "invalid value for 'default_vat', must be smaller than or equal to 1."
      end

      if default_vat < 0
        fail ArgumentError, "invalid value for 'default_vat', must be greater than or equal to 0."
      end

      @default_vat = default_vat
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          handle == o.handle &&
          currency == o.currency &&
          name == o.name &&
          address == o.address &&
          address2 == o.address2 &&
          city == o.city &&
          locale == o.locale &&
          timezone == o.timezone &&
          country == o.country &&
          email == o.email &&
          phone == o.phone &&
          vat == o.vat &&
          website == o.website &&
          logo == o.logo &&
          postal_code == o.postal_code &&
          default_vat == o.default_vat
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [handle, currency, name, address, address2, city, locale, timezone, country, email, phone, vat, website, logo, postal_code, default_vat].hash
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