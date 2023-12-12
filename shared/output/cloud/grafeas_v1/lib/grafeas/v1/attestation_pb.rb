# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/attestation.proto

require 'google/protobuf'

require 'grafeas/v1/common_pb'


descriptor_data = "\n\x1cgrafeas/v1/attestation.proto\x12\ngrafeas.v1\x1a\x17grafeas/v1/common.proto\"f\n\x0f\x41ttestationNote\x12.\n\x04hint\x18\x01 \x01(\x0b\x32 .grafeas.v1.AttestationNote.Hint\x1a#\n\x04Hint\x12\x1b\n\x13human_readable_name\x18\x01 \x01(\t\"\x1a\n\x03Jwt\x12\x13\n\x0b\x63ompact_jwt\x18\x01 \x01(\t\"}\n\x15\x41ttestationOccurrence\x12\x1a\n\x12serialized_payload\x18\x01 \x01(\x0c\x12)\n\nsignatures\x18\x02 \x03(\x0b\x32\x15.grafeas.v1.Signature\x12\x1d\n\x04jwts\x18\x03 \x03(\x0b\x32\x0f.grafeas.v1.JwtBQ\n\rio.grafeas.v1P\x01Z8google.golang.org/genproto/googleapis/grafeas/v1;grafeas\xa2\x02\x03GRAb\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool

begin
  pool.add_serialized_file(descriptor_data)
rescue TypeError
  # Compatibility code: will be removed in the next major version.
  require 'google/protobuf/descriptor_pb'
  parsed = Google::Protobuf::FileDescriptorProto.decode(descriptor_data)
  parsed.clear_dependency
  serialized = parsed.class.encode(parsed)
  file = pool.add_serialized_file(serialized)
  warn "Warning: Protobuf detected an import path issue while loading generated file #{__FILE__}"
  imports = [
    ["grafeas.v1.Signature", "grafeas/v1/common.proto"],
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

module Grafeas
  module V1
    AttestationNote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.AttestationNote").msgclass
    AttestationNote::Hint = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.AttestationNote.Hint").msgclass
    Jwt = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.Jwt").msgclass
    AttestationOccurrence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.AttestationOccurrence").msgclass
  end
end
