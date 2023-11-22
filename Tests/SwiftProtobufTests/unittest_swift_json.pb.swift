// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_json.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protos/unittest_swift_json.proto
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2020 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _3: SwiftProtobuf.ProtobufAPIVersion_3 {}
  typealias Version = _3
}

struct SwiftProtoTesting_SwiftJSONTest: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// This case was omitted from test_messages_proto3.proto
  var repeatedNullValue: [SwiftProtobuf.Google_Protobuf_NullValue] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "swift_proto_testing"

extension SwiftProtoTesting_SwiftJSONTest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SwiftJSONTest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    318: .standard(proto: "repeated_null_value"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 318: try { try decoder.decodeRepeatedEnumField(value: &self.repeatedNullValue) }()
      default: break
      }
    }
  }

  static let _fields: [Field<Self>] = [
    .packedEnum({ $0.repeatedNullValue }, fieldNumber: 318),
  ]


  static func ==(lhs: SwiftProtoTesting_SwiftJSONTest, rhs: SwiftProtoTesting_SwiftJSONTest) -> Bool {
    if lhs.repeatedNullValue != rhs.repeatedNullValue {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
