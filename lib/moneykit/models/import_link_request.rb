=begin
#MoneyKit API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2023-02-18

Generated by: https://openapi-generator.tech
Generator version: 7.12.0

=end

require 'date'
require 'time'

module MoneyKit
  class ImportLinkRequest
    attr_accessor :customer_user

    # The name of the provider from which this data came.  The name is helpful, but not         required, and can be omitted, particularly if the source is unknown or can't be attributed to one of         MoneyKit's providers.
    attr_accessor :provider

    # MoneyKit's unique ID for this institution.  If you use a MoneyKit-supported provider, you can         also submit the provider name and __their__ institution_id in dotted notation, such as `mx.chase`         or `yodlee.30188`.  If the imported link is synced with a data provider later, it will be connected to         this institution.  Note that MoneyKit may reconnect the link using any supported provider, not just the one         given during this import.
    attr_accessor :institution_id

    # The accounts to import.  Note that these fields are initial values only.  After import,         the actual values may be normalized and cleaned to fit the MoneyKit schema.  Also, values may be updated         if the account is synced with a provider later.
    attr_accessor :accounts

    # The transactions to import.
    attr_accessor :transactions

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
        :'customer_user' => :'customer_user',
        :'provider' => :'provider',
        :'institution_id' => :'institution_id',
        :'accounts' => :'accounts',
        :'transactions' => :'transactions'
      }
    end

    # Returns attribute mapping this model knows about
    def self.acceptable_attribute_map
      attribute_map
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      acceptable_attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'customer_user' => :'CustomerUser',
        :'provider' => :'Provider',
        :'institution_id' => :'String',
        :'accounts' => :'Array<AccountImportData>',
        :'transactions' => :'Array<TransactionImportData>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `MoneyKit::ImportLinkRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      acceptable_attribute_map = self.class.acceptable_attribute_map
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!acceptable_attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `MoneyKit::ImportLinkRequest`. Please check the name to make sure it's valid. List of attributes: " + acceptable_attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'customer_user')
        self.customer_user = attributes[:'customer_user']
      else
        self.customer_user = nil
      end

      if attributes.key?(:'provider')
        self.provider = attributes[:'provider']
      end

      if attributes.key?(:'institution_id')
        self.institution_id = attributes[:'institution_id']
      else
        self.institution_id = nil
      end

      if attributes.key?(:'accounts')
        if (value = attributes[:'accounts']).is_a?(Array)
          self.accounts = value
        end
      else
        self.accounts = nil
      end

      if attributes.key?(:'transactions')
        if (value = attributes[:'transactions']).is_a?(Array)
          self.transactions = value
        end
      else
        self.transactions = nil
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      warn '[DEPRECATED] the `list_invalid_properties` method is obsolete'
      invalid_properties = Array.new
      if @customer_user.nil?
        invalid_properties.push('invalid value for "customer_user", customer_user cannot be nil.')
      end

      if @institution_id.nil?
        invalid_properties.push('invalid value for "institution_id", institution_id cannot be nil.')
      end

      if @accounts.nil?
        invalid_properties.push('invalid value for "accounts", accounts cannot be nil.')
      end

      if @accounts.length < 1
        invalid_properties.push('invalid value for "accounts", number of items must be greater than or equal to 1.')
      end

      if @transactions.nil?
        invalid_properties.push('invalid value for "transactions", transactions cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      warn '[DEPRECATED] the `valid?` method is obsolete'
      return false if @customer_user.nil?
      return false if @institution_id.nil?
      return false if @accounts.nil?
      return false if @accounts.length < 1
      return false if @transactions.nil?
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer_user Value to be assigned
    def customer_user=(customer_user)
      if customer_user.nil?
        fail ArgumentError, 'customer_user cannot be nil'
      end

      @customer_user = customer_user
    end

    # Custom attribute writer method with validation
    # @param [Object] institution_id Value to be assigned
    def institution_id=(institution_id)
      if institution_id.nil?
        fail ArgumentError, 'institution_id cannot be nil'
      end

      @institution_id = institution_id
    end

    # Custom attribute writer method with validation
    # @param [Object] accounts Value to be assigned
    def accounts=(accounts)
      if accounts.nil?
        fail ArgumentError, 'accounts cannot be nil'
      end

      if accounts.length < 1
        fail ArgumentError, 'invalid value for "accounts", number of items must be greater than or equal to 1.'
      end

      @accounts = accounts
    end

    # Custom attribute writer method with validation
    # @param [Object] transactions Value to be assigned
    def transactions=(transactions)
      if transactions.nil?
        fail ArgumentError, 'transactions cannot be nil'
      end

      @transactions = transactions
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          customer_user == o.customer_user &&
          provider == o.provider &&
          institution_id == o.institution_id &&
          accounts == o.accounts &&
          transactions == o.transactions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [customer_user, provider, institution_id, accounts, transactions].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      transformed_hash = {}
      openapi_types.each_pair do |key, type|
        if attributes.key?(attribute_map[key]) && attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = nil
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            transformed_hash["#{key}"] = attributes[attribute_map[key]].map { |v| _deserialize($1, v) }
          end
        elsif !attributes[attribute_map[key]].nil?
          transformed_hash["#{key}"] = _deserialize(type, attributes[attribute_map[key]])
        end
      end
      new(transformed_hash)
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def self._deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        ::Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = MoneyKit.const_get(type)
        klass.respond_to?(:openapi_any_of) || klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
