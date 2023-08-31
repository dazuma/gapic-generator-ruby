# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/vision/v1/web_detection.proto

require 'google/protobuf'


descriptor_data = "\n*google/cloud/vision/v1/web_detection.proto\x12\x16google.cloud.vision.v1\"\xd4\x06\n\x0cWebDetection\x12\x44\n\x0cweb_entities\x18\x01 \x03(\x0b\x32..google.cloud.vision.v1.WebDetection.WebEntity\x12K\n\x14\x66ull_matching_images\x18\x02 \x03(\x0b\x32-.google.cloud.vision.v1.WebDetection.WebImage\x12N\n\x17partial_matching_images\x18\x03 \x03(\x0b\x32-.google.cloud.vision.v1.WebDetection.WebImage\x12P\n\x1apages_with_matching_images\x18\x04 \x03(\x0b\x32,.google.cloud.vision.v1.WebDetection.WebPage\x12N\n\x17visually_similar_images\x18\x06 \x03(\x0b\x32-.google.cloud.vision.v1.WebDetection.WebImage\x12H\n\x11\x62\x65st_guess_labels\x18\x08 \x03(\x0b\x32-.google.cloud.vision.v1.WebDetection.WebLabel\x1a\x42\n\tWebEntity\x12\x11\n\tentity_id\x18\x01 \x01(\t\x12\r\n\x05score\x18\x02 \x01(\x02\x12\x13\n\x0b\x64\x65scription\x18\x03 \x01(\t\x1a&\n\x08WebImage\x12\x0b\n\x03url\x18\x01 \x01(\t\x12\r\n\x05score\x18\x02 \x01(\x02\x1a\xd6\x01\n\x07WebPage\x12\x0b\n\x03url\x18\x01 \x01(\t\x12\r\n\x05score\x18\x02 \x01(\x02\x12\x12\n\npage_title\x18\x03 \x01(\t\x12K\n\x14\x66ull_matching_images\x18\x04 \x03(\x0b\x32-.google.cloud.vision.v1.WebDetection.WebImage\x12N\n\x17partial_matching_images\x18\x05 \x03(\x0b\x32-.google.cloud.vision.v1.WebDetection.WebImage\x1a\x30\n\x08WebLabel\x12\r\n\x05label\x18\x01 \x01(\t\x12\x15\n\rlanguage_code\x18\x02 \x01(\tBr\n\x1a\x63om.google.cloud.vision.v1B\x11WebDetectionProtoP\x01Z5cloud.google.com/go/vision/v2/apiv1/visionpb;visionpb\xf8\x01\x01\xa2\x02\x04GCVNb\x06proto3"

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

module Google
  module Cloud
    module Vision
      module V1
        WebDetection = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.WebDetection").msgclass
        WebDetection::WebEntity = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.WebDetection.WebEntity").msgclass
        WebDetection::WebImage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.WebDetection.WebImage").msgclass
        WebDetection::WebPage = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.WebDetection.WebPage").msgclass
        WebDetection::WebLabel = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.vision.v1.WebDetection.WebLabel").msgclass
      end
    end
  end
end
