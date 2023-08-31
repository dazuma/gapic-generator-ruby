# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: testing/mixins/mixins.proto

require 'google/protobuf'

require 'google/api/client_pb'
require 'google/api/annotations_pb'


descriptor_data = "\n\x1btesting/mixins/mixins.proto\x12\x0etesting.mixins\x1a\x17google/api/client.proto\x1a\x1cgoogle/api/annotations.proto\"\t\n\x07Request\"\n\n\x08Response2\x97\x01\n\x0eServiceWithLoc\x12\x66\n\x06Method\x12\x17.testing.mixins.Request\x1a\x18.testing.mixins.Response\")\x82\xd3\xe4\x93\x02#\"\x1e/v1beta1/ServiceWithLoc/Method:\x01*\x1a\x1d\xca\x41\x1aservicewithloc.example.comB\x12\xea\x02\x0fTesting::Mixinsb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError => e
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
  ]
  imports.each do |type_name, expected_filename|
    import_file = pool.lookup(type_name).file_descriptor
    if import_file.name != expected_filename
      warn "- #{file.name} imports #{expected_filename}, but that import was loaded as #{import_file.name}"
    end
  end
  warn "Each proto file must use a consistent fully-qualified name."
  warn "This will become an error in the next major version."
end

module Testing
  module Mixins
    Request = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("testing.mixins.Request").msgclass
    Response = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("testing.mixins.Response").msgclass
  end
end
