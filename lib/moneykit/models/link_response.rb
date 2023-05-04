# #MoneyKit API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 0.1.0
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 6.5.0
#

require 'date'
require 'time'

module MoneyKit
  class LinkResponse
    # The unique ID for this link.
    attr_accessor :link_id

    # The unique ID for the institution this link is connected to.
    attr_accessor :institution_id

    # The institution name this link is connected to.
    attr_accessor :institution_name

    attr_accessor :state, :error_code, :products, :provider

    # An ISO-8601 timestamp indicating the last time that the account was updated.
    attr_accessor :last_synced_at

    # Arbitrary strings used to describe this link.
    attr_accessor :tags

    # The webhook url assigned to this link.
    attr_accessor :webhook

    class EnumAttributeValidator
      attr_reader :datatype, :allowable_values

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
        'link_id': :link_id,
        'institution_id': :institution_id,
        'institution_name': :institution_name,
        'state': :state,
        'error_code': :error_code,
        'last_synced_at': :last_synced_at,
        'tags': :tags,
        'products': :products,
        'provider': :provider,
        'webhook': :webhook
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'link_id': :String,
        'institution_id': :String,
        'institution_name': :String,
        'state': :LinkState,
        'error_code': :LinkError,
        'last_synced_at': :Time,
        'tags': :'Array<String>',
        'products': :Products,
        'provider': :Provider,
        'webhook': :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new(%i[
                error_code
                last_synced_at
                tags
                webhook
              ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError,
              'The input argument (attributes) must be a hash in `MoneyKit::LinkResponse` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `MoneyKit::LinkResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.link_id = attributes[:link_id] if attributes.key?(:link_id)

      self.institution_id = attributes[:institution_id] if attributes.key?(:institution_id)

      self.institution_name = attributes[:institution_name] if attributes.key?(:institution_name)

      self.state = attributes[:state] if attributes.key?(:state)

      self.error_code = attributes[:error_code] if attributes.key?(:error_code)

      self.last_synced_at = attributes[:last_synced_at] if attributes.key?(:last_synced_at)

      if attributes.key?(:tags) && (value = attributes[:tags]).is_a?(Array)
        self.tags = value
      end

      self.products = attributes[:products] if attributes.key?(:products)

      self.provider = attributes[:provider] if attributes.key?(:provider)

      return unless attributes.key?(:webhook)

      self.webhook = attributes[:webhook]
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push('invalid value for "link_id", link_id cannot be nil.') if @link_id.nil?

      if @institution_id.nil?
        invalid_properties.push('invalid value for "institution_id", institution_id cannot be nil.')
      end

      if @institution_name.nil?
        invalid_properties.push('invalid value for "institution_name", institution_name cannot be nil.')
      end

      invalid_properties.push('invalid value for "state", state cannot be nil.') if @state.nil?

      invalid_properties.push('invalid value for "products", products cannot be nil.') if @products.nil?

      invalid_properties.push('invalid value for "provider", provider cannot be nil.') if @provider.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @link_id.nil?
      return false if @institution_id.nil?
      return false if @institution_name.nil?
      return false if @state.nil?
      return false if @products.nil?
      return false if @provider.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        link_id == other.link_id &&
        institution_id == other.institution_id &&
        institution_name == other.institution_name &&
        state == other.state &&
        error_code == other.error_code &&
        last_synced_at == other.last_synced_at &&
        tags == other.tags &&
        products == other.products &&
        provider == other.provider &&
        webhook == other.webhook
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [link_id, institution_id, institution_name, state, error_code, last_synced_at, tags, products, provider,
       webhook].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send("#{key}=", attributes[self.class.attribute_map[key]].map do |v|
                              _deserialize(::Regexp.last_match(1), v)
                            end)
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
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
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        value = send(attr)
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
