# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: grafeas/v1/compliance.proto

require 'google/protobuf'

require 'grafeas/v1/severity_pb'

Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("grafeas/v1/compliance.proto", :syntax => :proto3) do
    add_message "grafeas.v1.ComplianceNote" do
      optional :title, :string, 1
      optional :description, :string, 2
      repeated :version, :message, 3, "grafeas.v1.ComplianceVersion"
      optional :rationale, :string, 4
      optional :remediation, :string, 5
      optional :scan_instructions, :bytes, 7
      oneof :compliance_type do
        optional :cis_benchmark, :message, 6, "grafeas.v1.ComplianceNote.CisBenchmark"
      end
    end
    add_message "grafeas.v1.ComplianceNote.CisBenchmark" do
      optional :profile_level, :int32, 1
      optional :severity, :enum, 2, "grafeas.v1.Severity"
    end
    add_message "grafeas.v1.ComplianceVersion" do
      optional :cpe_uri, :string, 1
      optional :benchmark_document, :string, 3
      optional :version, :string, 2
    end
    add_message "grafeas.v1.ComplianceOccurrence" do
      repeated :non_compliant_files, :message, 2, "grafeas.v1.NonCompliantFile"
      optional :non_compliance_reason, :string, 3
    end
    add_message "grafeas.v1.NonCompliantFile" do
      optional :path, :string, 1
      optional :display_command, :string, 2
      optional :reason, :string, 3
    end
  end
end

module Grafeas
  module V1
    ComplianceNote = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ComplianceNote").msgclass
    ComplianceNote::CisBenchmark = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ComplianceNote.CisBenchmark").msgclass
    ComplianceVersion = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ComplianceVersion").msgclass
    ComplianceOccurrence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.ComplianceOccurrence").msgclass
    NonCompliantFile = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("grafeas.v1.NonCompliantFile").msgclass
  end
end