# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/speech/v1/cloud_speech.proto for package 'google.cloud.speech.v1'
# Original file comments:
# Copyright 2023 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/speech/v1/cloud_speech_pb'

module Google
  module Cloud
    module Speech
      module V1
        module Speech
          # Service that implements Google Cloud Speech API.
          class Service

            include ::GRPC::GenericService

            self.marshal_class_method = :encode
            self.unmarshal_class_method = :decode
            self.service_name = 'google.cloud.speech.v1.Speech'

            # Performs synchronous speech recognition: receive results after all audio
            # has been sent and processed.
            rpc :Recognize, ::Google::Cloud::Speech::V1::RecognizeRequest, ::Google::Cloud::Speech::V1::RecognizeResponse
            # Performs asynchronous speech recognition: receive results via the
            # google.longrunning.Operations interface. Returns either an
            # `Operation.error` or an `Operation.response` which contains
            # a `LongRunningRecognizeResponse` message.
            # For more information on asynchronous speech recognition, see the
            # [how-to](https://cloud.google.com/speech-to-text/docs/async-recognize).
            rpc :LongRunningRecognize, ::Google::Cloud::Speech::V1::LongRunningRecognizeRequest, ::Google::Longrunning::Operation
            # Performs bidirectional streaming speech recognition: receive results while
            # sending audio. This method is only available via the gRPC API (not REST).
            rpc :StreamingRecognize, stream(::Google::Cloud::Speech::V1::StreamingRecognizeRequest), stream(::Google::Cloud::Speech::V1::StreamingRecognizeResponse)
          end

          Stub = Service.rpc_stub_class
        end
      end
    end
  end
end
