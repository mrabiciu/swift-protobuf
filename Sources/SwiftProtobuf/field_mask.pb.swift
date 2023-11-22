// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: google/protobuf/field_mask.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2008 Google Inc.  All rights reserved.
// https://developers.google.com/protocol-buffers/
//
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided that the following conditions are
// met:
//
//     * Redistributions of source code must retain the above copyright
// notice, this list of conditions and the following disclaimer.
//     * Redistributions in binary form must reproduce the above
// copyright notice, this list of conditions and the following disclaimer
// in the documentation and/or other materials provided with the
// distribution.
//     * Neither the name of Google Inc. nor the names of its
// contributors may be used to endorse or promote products derived from
// this software without specific prior written permission.
//
// THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
// "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
// LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
// A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
// OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
// DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
// THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
// (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
// OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.

import Foundation

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: ProtobufAPIVersionCheck {
  struct _3: ProtobufAPIVersion_3 {}
  typealias Version = _3
}

/// `FieldMask` represents a set of symbolic field paths, for example:
///
///     paths: "f.a"
///     paths: "f.b.d"
///
/// Here `f` represents a field in some root message, `a` and `b`
/// fields in the message found in `f`, and `d` a field found in the
/// message in `f.b`.
///
/// Field masks are used to specify a subset of fields that should be
/// returned by a get operation or modified by an update operation.
/// Field masks also have a custom JSON encoding (see below).
///
/// # Field Masks in Projections
///
/// When used in the context of a projection, a response message or
/// sub-message is filtered by the API to only contain those fields as
/// specified in the mask. For example, if the mask in the previous
/// example is applied to a response message as follows:
///
///     f {
///       a : 22
///       b {
///         d : 1
///         x : 2
///       }
///       y : 13
///     }
///     z: 8
///
/// The result will not contain specific values for fields x,y and z
/// (their value will be set to the default, and omitted in proto text
/// output):
///
///
///     f {
///       a : 22
///       b {
///         d : 1
///       }
///     }
///
/// A repeated field is not allowed except at the last position of a
/// paths string.
///
/// If a FieldMask object is not present in a get operation, the
/// operation applies to all fields (as if a FieldMask of all fields
/// had been specified).
///
/// Note that a field mask does not necessarily apply to the
/// top-level response message. In case of a REST get operation, the
/// field mask applies directly to the response, but in case of a REST
/// list operation, the mask instead applies to each individual message
/// in the returned resource list. In case of a REST custom method,
/// other definitions may be used. Where the mask applies will be
/// clearly documented together with its declaration in the API.  In
/// any case, the effect on the returned resource/resources is required
/// behavior for APIs.
///
/// # Field Masks in Update Operations
///
/// A field mask in update operations specifies which fields of the
/// targeted resource are going to be updated. The API is required
/// to only change the values of the fields as specified in the mask
/// and leave the others untouched. If a resource is passed in to
/// describe the updated values, the API ignores the values of all
/// fields not covered by the mask.
///
/// If a repeated field is specified for an update operation, new values will
/// be appended to the existing repeated field in the target resource. Note that
/// a repeated field is only allowed in the last position of a `paths` string.
///
/// If a sub-message is specified in the last position of the field mask for an
/// update operation, then new value will be merged into the existing sub-message
/// in the target resource.
///
/// For example, given the target message:
///
///     f {
///       b {
///         d: 1
///         x: 2
///       }
///       c: [1]
///     }
///
/// And an update message:
///
///     f {
///       b {
///         d: 10
///       }
///       c: [2]
///     }
///
/// then if the field mask is:
///
///  paths: ["f.b", "f.c"]
///
/// then the result will be:
///
///     f {
///       b {
///         d: 10
///         x: 2
///       }
///       c: [1, 2]
///     }
///
/// An implementation may provide options to override this default behavior for
/// repeated and message fields.
///
/// In order to reset a field's value to the default, the field must
/// be in the mask and set to the default value in the provided resource.
/// Hence, in order to reset all fields of a resource, provide a default
/// instance of the resource and set all fields in the mask, or do
/// not provide a mask as described below.
///
/// If a field mask is not present on update, the operation applies to
/// all fields (as if a field mask of all fields has been specified).
/// Note that in the presence of schema evolution, this may mean that
/// fields the client does not know and has therefore not filled into
/// the request will be reset to their default. If this is unwanted
/// behavior, a specific service may require a client to always specify
/// a field mask, producing an error if not.
///
/// As with get operations, the location of the resource which
/// describes the updated values in the request message depends on the
/// operation kind. In any case, the effect of the field mask is
/// required to be honored by the API.
///
/// ## Considerations for HTTP REST
///
/// The HTTP kind of an update operation which uses a field mask must
/// be set to PATCH instead of PUT in order to satisfy HTTP semantics
/// (PUT must only be used for full updates).
///
/// # JSON Encoding of Field Masks
///
/// In JSON, a field mask is encoded as a single string where paths are
/// separated by a comma. Fields name in each path are converted
/// to/from lower-camel naming conventions.
///
/// As an example, consider the following message declarations:
///
///     message Profile {
///       User user = 1;
///       Photo photo = 2;
///     }
///     message User {
///       string display_name = 1;
///       string address = 2;
///     }
///
/// In proto a field mask for `Profile` may look as such:
///
///     mask {
///       paths: "user.display_name"
///       paths: "photo"
///     }
///
/// In JSON, the same mask is represented as below:
///
///     {
///       mask: "user.displayName,photo"
///     }
///
/// # Field Masks and Oneof Fields
///
/// Field masks treat fields in oneofs just as regular fields. Consider the
/// following message:
///
///     message SampleMessage {
///       oneof test_oneof {
///         string name = 4;
///         SubMessage sub_message = 9;
///       }
///     }
///
/// The field mask can be:
///
///     mask {
///       paths: "name"
///     }
///
/// Or:
///
///     mask {
///       paths: "sub_message"
///     }
///
/// Note that oneof type names ("test_oneof" in this case) cannot be used in
/// paths.
///
/// ## Field Mask Verification
///
/// The implementation of any API method which has a FieldMask type field in the
/// request should verify the included field paths, and return an
/// `INVALID_ARGUMENT` error if any path is unmappable.
public struct Google_Protobuf_FieldMask: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// The set of field mask paths.
  public var paths: [String] = []

  public var unknownFields = UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "google.protobuf"

extension Google_Protobuf_FieldMask: Message, _MessageImplementationBase, _ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".FieldMask"
  public static let _protobuf_nameMap: _NameMap = [
    1: .same(proto: "paths"),
  ]

  public mutating func decodeMessage<D: Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedStringField(value: &self.paths) }()
      default: break
      }
    }
  }

  public static let _fields: [Field<Self>] = [
    .repeatedString({ $0.paths }, fieldNumber: 1),
  ]


  public static func ==(lhs: Google_Protobuf_FieldMask, rhs: Google_Protobuf_FieldMask) -> Bool {
    if lhs.paths != rhs.paths {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
