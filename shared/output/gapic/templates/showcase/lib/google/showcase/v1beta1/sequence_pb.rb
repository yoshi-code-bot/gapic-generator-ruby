# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/showcase/v1beta1/sequence.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/empty_pb'
require 'google/protobuf/timestamp_pb'
require 'google/rpc/status_pb'


descriptor_data = "\n&google/showcase/v1beta1/sequence.proto\x12\x17google.showcase.v1beta1\x1a\x1cgoogle/api/annotations.proto\x1a\x17google/api/client.proto\x1a\x1fgoogle/api/field_behavior.proto\x1a\x19google/api/resource.proto\x1a\x1egoogle/protobuf/duration.proto\x1a\x1bgoogle/protobuf/empty.proto\x1a\x1fgoogle/protobuf/timestamp.proto\x1a\x17google/rpc/status.proto\"\xf3\x01\n\x08Sequence\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12=\n\tresponses\x18\x02 \x03(\x0b\x32*.google.showcase.v1beta1.Sequence.Response\x1aX\n\x08Response\x12\"\n\x06status\x18\x01 \x01(\x0b\x32\x12.google.rpc.Status\x12(\n\x05\x64\x65lay\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration:;\xea\x41\x38\n showcase.googleapis.com/Sequence\x12\x14sequences/{sequence}\"\xca\x02\n\x11StreamingSequence\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x0f\n\x07\x63ontent\x18\x02 \x01(\t\x12\x46\n\tresponses\x18\x03 \x03(\x0b\x32\x33.google.showcase.v1beta1.StreamingSequence.Response\x1ap\n\x08Response\x12\"\n\x06status\x18\x01 \x01(\x0b\x32\x12.google.rpc.Status\x12(\n\x05\x64\x65lay\x18\x02 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\x16\n\x0eresponse_index\x18\x03 \x01(\x05:W\xea\x41T\n)showcase.googleapis.com/StreamingSequence\x12\'streamingSequences/{streaming_sequence}\"\xd2\x03\n\x17StreamingSequenceReport\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12J\n\x08\x61ttempts\x18\x02 \x03(\x0b\x32\x38.google.showcase.v1beta1.StreamingSequenceReport.Attempt\x1a\xe0\x01\n\x07\x41ttempt\x12\x16\n\x0e\x61ttempt_number\x18\x01 \x01(\x05\x12\x34\n\x10\x61ttempt_deadline\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x31\n\rresponse_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x30\n\rattempt_delay\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\"\n\x06status\x18\x05 \x01(\x0b\x32\x12.google.rpc.Status:u\xea\x41r\n/showcase.googleapis.com/StreamingSequenceReport\x12?streamingSequences/{streaming_sequence}/streamingSequenceReport\"\x9b\x03\n\x0eSequenceReport\x12\x11\n\x04name\x18\x01 \x01(\tB\x03\xe0\x41\x03\x12\x41\n\x08\x61ttempts\x18\x02 \x03(\x0b\x32/.google.showcase.v1beta1.SequenceReport.Attempt\x1a\xe0\x01\n\x07\x41ttempt\x12\x16\n\x0e\x61ttempt_number\x18\x01 \x01(\x05\x12\x34\n\x10\x61ttempt_deadline\x18\x02 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x31\n\rresponse_time\x18\x03 \x01(\x0b\x32\x1a.google.protobuf.Timestamp\x12\x30\n\rattempt_delay\x18\x04 \x01(\x0b\x32\x19.google.protobuf.Duration\x12\"\n\x06status\x18\x05 \x01(\x0b\x32\x12.google.rpc.Status:P\xea\x41M\n&showcase.googleapis.com/SequenceReport\x12#sequences/{sequence}/sequenceReport\"L\n\x15\x43reateSequenceRequest\x12\x33\n\x08sequence\x18\x01 \x01(\x0b\x32!.google.showcase.v1beta1.Sequence\"h\n\x1e\x43reateStreamingSequenceRequest\x12\x46\n\x12streaming_sequence\x18\x01 \x01(\x0b\x32*.google.showcase.v1beta1.StreamingSequence\"P\n\x16\x41ttemptSequenceRequest\x12\x36\n\x04name\x18\x01 \x01(\tB(\xe0\x41\x02\xfa\x41\"\n showcase.googleapis.com/Sequence\"\x80\x01\n\x1f\x41ttemptStreamingSequenceRequest\x12?\n\x04name\x18\x01 \x01(\tB1\xe0\x41\x02\xfa\x41+\n)showcase.googleapis.com/StreamingSequence\x12\x1c\n\x0flast_fail_index\x18\x02 \x01(\x05\x42\x03\xe0\x41\x01\"3\n AttemptStreamingSequenceResponse\x12\x0f\n\x07\x63ontent\x18\x01 \x01(\t\"X\n\x18GetSequenceReportRequest\x12<\n\x04name\x18\x01 \x01(\tB.\xe0\x41\x02\xfa\x41(\n&showcase.googleapis.com/SequenceReport\"j\n!GetStreamingSequenceReportRequest\x12\x45\n\x04name\x18\x01 \x01(\tB7\xe0\x41\x02\xfa\x41\x31\n/showcase.googleapis.com/StreamingSequenceReport2\xf0\x08\n\x0fSequenceService\x12\x94\x01\n\x0e\x43reateSequence\x12..google.showcase.v1beta1.CreateSequenceRequest\x1a!.google.showcase.v1beta1.Sequence\"/\xda\x41\x08sequence\x82\xd3\xe4\x93\x02\x1e\"\x12/v1beta1/sequences:\x08sequence\x12\xcc\x01\n\x17\x43reateStreamingSequence\x12\x37.google.showcase.v1beta1.CreateStreamingSequenceRequest\x1a*.google.showcase.v1beta1.StreamingSequence\"L\xda\x41\x12streaming_sequence\x82\xd3\xe4\x93\x02\x31\"\x1b/v1beta1/streamingSequences:\x12streaming_sequence\x12\xaa\x01\n\x11GetSequenceReport\x12\x31.google.showcase.v1beta1.GetSequenceReportRequest\x1a\'.google.showcase.v1beta1.SequenceReport\"9\xda\x41\x04name\x82\xd3\xe4\x93\x02,\x12*/v1beta1/{name=sequences/*/sequenceReport}\x12\xd7\x01\n\x1aGetStreamingSequenceReport\x12:.google.showcase.v1beta1.GetStreamingSequenceReportRequest\x1a\x30.google.showcase.v1beta1.StreamingSequenceReport\"K\xda\x41\x04name\x82\xd3\xe4\x93\x02>\x12</v1beta1/{name=streamingSequences/*/streamingSequenceReport}\x12\x89\x01\n\x0f\x41ttemptSequence\x12/.google.showcase.v1beta1.AttemptSequenceRequest\x1a\x16.google.protobuf.Empty\"-\xda\x41\x04name\x82\xd3\xe4\x93\x02 \"\x1b/v1beta1/{name=sequences/*}:\x01*\x12\xd0\x01\n\x18\x41ttemptStreamingSequence\x12\x38.google.showcase.v1beta1.AttemptStreamingSequenceRequest\x1a\x39.google.showcase.v1beta1.AttemptStreamingSequenceResponse\"=\xda\x41\x04name\x82\xd3\xe4\x93\x02\x30\"+/v1beta1/{name=streamingSequences/*}:stream:\x01*0\x01\x1a\x11\xca\x41\x0elocalhost:7469Bq\n\x1b\x63om.google.showcase.v1beta1P\x01Z4github.com/googleapis/gapic-showcase/server/genproto\xea\x02\x19Google::Showcase::V1beta1b\x06proto3"

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
    ["google.rpc.Status", "google/rpc/status.proto"],
    ["google.protobuf.Duration", "google/protobuf/duration.proto"],
    ["google.protobuf.Timestamp", "google/protobuf/timestamp.proto"],
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
  module Showcase
    module V1beta1
      Sequence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.Sequence").msgclass
      Sequence::Response = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.Sequence.Response").msgclass
      StreamingSequence = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.StreamingSequence").msgclass
      StreamingSequence::Response = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.StreamingSequence.Response").msgclass
      StreamingSequenceReport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.StreamingSequenceReport").msgclass
      StreamingSequenceReport::Attempt = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.StreamingSequenceReport.Attempt").msgclass
      SequenceReport = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.SequenceReport").msgclass
      SequenceReport::Attempt = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.SequenceReport.Attempt").msgclass
      CreateSequenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.CreateSequenceRequest").msgclass
      CreateStreamingSequenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.CreateStreamingSequenceRequest").msgclass
      AttemptSequenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.AttemptSequenceRequest").msgclass
      AttemptStreamingSequenceRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.AttemptStreamingSequenceRequest").msgclass
      AttemptStreamingSequenceResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.AttemptStreamingSequenceResponse").msgclass
      GetSequenceReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.GetSequenceReportRequest").msgclass
      GetStreamingSequenceReportRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.showcase.v1beta1.GetStreamingSequenceReportRequest").msgclass
    end
  end
end
