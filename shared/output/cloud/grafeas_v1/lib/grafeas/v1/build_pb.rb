# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/build.proto

require 'google/protobuf'

require 'grafeas/v1/intoto_provenance_pb'
require 'grafeas/v1/intoto_statement_pb'
require 'grafeas/v1/provenance_pb'


descriptor_data = "\n\x16grafeas/v1/build.proto\x12\ngrafeas.v1\x1a\"grafeas/v1/intoto_provenance.proto\x1a!grafeas/v1/intoto_statement.proto\x1a\x1bgrafeas/v1/provenance.proto\"$\n\tBuildNote\x12\x17\n\x0f\x62uilder_version\x18\x01 \x01(\t\"\xcc\x01\n\x0f\x42uildOccurrence\x12/\n\nprovenance\x18\x01 \x01(\x0b\x32\x1b.grafeas.v1.BuildProvenance\x12\x18\n\x10provenance_bytes\x18\x02 \x01(\t\x12\x37\n\x11intoto_provenance\x18\x03 \x01(\x0b\x32\x1c.grafeas.v1.InTotoProvenance\x12\x35\n\x10intoto_statement\x18\x04 \x01(\x0b\x32\x1b.grafeas.v1.InTotoStatementBQ\n\rio.grafeas.v1P\x01Z8google.golang.org/genproto/googleapis/grafeas/v1;grafeas\xa2\x02\x03GRAb\x06proto3"

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
    ["grafeas.v1.BuildProvenance", "grafeas/v1/provenance.proto"],
    ["grafeas.v1.InTotoProvenance", "grafeas/v1/intoto_provenance.proto"],
    ["grafeas.v1.InTotoStatement", "grafeas/v1/intoto_statement.proto"],
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
    BuildNote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BuildNote").msgclass
    BuildOccurrence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.BuildOccurrence").msgclass
  end
end
