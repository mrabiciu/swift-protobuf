// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_deprecated.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protos/unittest_swift_deprecated.proto - test proto
//
// This source file is part of the Swift.org open source project
//
// Copyright (c) 2014 - 2023 Apple Inc. and the Swift project authors
// Licensed under Apache License v2.0 with Runtime Library Exception
//
// See http://swift.org/LICENSE.txt for license information
// See http://swift.org/CONTRIBUTORS.txt for the list of Swift project authors
//
// -----------------------------------------------------------------------------
///
/// Test generation support of deprecated attributes.
///
// -----------------------------------------------------------------------------

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

/// An enum value marked as deprecated.
enum SwiftProtoTesting_Deprecated_MyEnum: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case one // = 1

  /// Enum comment
  ///
  /// NOTE: This enum value was marked as deprecated in the .proto file
  case two // = 2

  /// NOTE: This enum value was marked as deprecated in the .proto file
  case three // = 3

  init() {
    self = .one
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 1: self = .one
    case 2: self = .two
    case 3: self = .three
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .one: return 1
    case .two: return 2
    case .three: return 3
    }
  }

}

/// Whole enum marked as deprecated.
///
/// NOTE: This enum was marked as deprecated in the .proto file.
enum SwiftProtoTesting_Deprecated_MyEnum2: SwiftProtobuf.Enum {
  typealias RawValue = Int
  case one // = 1
  case two // = 2
  case three // = 3

  init() {
    self = .one
  }

  init?(rawValue: Int) {
    switch rawValue {
    case 1: self = .one
    case 2: self = .two
    case 3: self = .three
    default: return nil
    }
  }

  var rawValue: Int {
    switch self {
    case .one: return 1
    case .two: return 2
    case .three: return 3
    }
  }

}

/// Marking fields as deprecated.
struct SwiftProtoTesting_Deprecated_MyMsg: SwiftProtobuf.ExtensibleMessage, @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// Field comment
  ///
  /// NOTE: This field was marked as deprecated in the .proto file.
  var stringField: String {
    get {return _storage._stringField ?? String()}
    set {_uniqueStorage()._stringField = newValue}
  }
  /// Returns true if `stringField` has been explicitly set.
  var hasStringField: Bool {return _storage._stringField != nil}
  /// Clears the value of `stringField`. Subsequent reads from it will return its default value.
  mutating func clearStringField() {_uniqueStorage()._stringField = nil}

  /// NOTE: This field was marked as deprecated in the .proto file.
  var intField: Int32 {
    get {return _storage._intField ?? 0}
    set {_uniqueStorage()._intField = newValue}
  }
  /// Returns true if `intField` has been explicitly set.
  var hasIntField: Bool {return _storage._intField != nil}
  /// Clears the value of `intField`. Subsequent reads from it will return its default value.
  mutating func clearIntField() {_uniqueStorage()._intField = nil}

  /// NOTE: This field was marked as deprecated in the .proto file.
  var fixedField: [UInt32] {
    get {return _storage._fixedField}
    set {_uniqueStorage()._fixedField = newValue}
  }

  /// NOTE: This field was marked as deprecated in the .proto file.
  var msgField: SwiftProtoTesting_Deprecated_MyMsg {
    get {return _storage._msgField ?? SwiftProtoTesting_Deprecated_MyMsg()}
    set {_uniqueStorage()._msgField = newValue}
  }
  /// Returns true if `msgField` has been explicitly set.
  var hasMsgField: Bool {return _storage._msgField != nil}
  /// Clears the value of `msgField`. Subsequent reads from it will return its default value.
  mutating func clearMsgField() {_uniqueStorage()._msgField = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  var _protobuf_extensionFieldValues = SwiftProtobuf.ExtensionFieldValueSet()
  fileprivate var _storage = _StorageClass.defaultInstance
}

/// Marking extension fields (scoped to a message) as deprecated.
struct SwiftProtoTesting_Deprecated_MsgScope: Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// Whole message marked as deprecated.
///
/// NOTE: This message was marked as deprecated in the .proto file.
struct SwiftProtoTesting_Deprecated_MyMsg2: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var stringField: String {
    get {return _storage._stringField ?? String()}
    set {_uniqueStorage()._stringField = newValue}
  }
  /// Returns true if `stringField` has been explicitly set.
  var hasStringField: Bool {return _storage._stringField != nil}
  /// Clears the value of `stringField`. Subsequent reads from it will return its default value.
  mutating func clearStringField() {_uniqueStorage()._stringField = nil}

  var intField: Int32 {
    get {return _storage._intField ?? 0}
    set {_uniqueStorage()._intField = newValue}
  }
  /// Returns true if `intField` has been explicitly set.
  var hasIntField: Bool {return _storage._intField != nil}
  /// Clears the value of `intField`. Subsequent reads from it will return its default value.
  mutating func clearIntField() {_uniqueStorage()._intField = nil}

  var fixedField: [UInt32] {
    get {return _storage._fixedField}
    set {_uniqueStorage()._fixedField = newValue}
  }

  var msgField: SwiftProtoTesting_Deprecated_MyMsg2 {
    get {return _storage._msgField ?? SwiftProtoTesting_Deprecated_MyMsg2()}
    set {_uniqueStorage()._msgField = newValue}
  }
  /// Returns true if `msgField` has been explicitly set.
  var hasMsgField: Bool {return _storage._msgField != nil}
  /// Clears the value of `msgField`. Subsequent reads from it will return its default value.
  mutating func clearMsgField() {_uniqueStorage()._msgField = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Extension support defined in unittest_swift_deprecated.proto.

// MARK: - Extension Properties

// Swift Extensions on the exteneded Messages to add easy access to the declared
// extension fields. The names are based on the extension field name from the proto
// declaration. To avoid naming collisions, the names are prefixed with the name of
// the scope where the extend directive occurs.

extension SwiftProtoTesting_Deprecated_MyMsg {

  /// Extension field comment
  ///
  /// NOTE: This extension field was marked as deprecated in the .proto file.
  var SwiftProtoTesting_Deprecated_stringExtField: String {
    get {return getExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_string_ext_field) ?? String()}
    set {setExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_string_ext_field, value: newValue)}
  }
  /// Returns true if extension `SwiftProtoTesting_Deprecated_Extensions_string_ext_field`
  /// has been explicitly set.
  var hasSwiftProtoTesting_Deprecated_stringExtField: Bool {
    return hasExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_string_ext_field)
  }
  /// Clears the value of extension `SwiftProtoTesting_Deprecated_Extensions_string_ext_field`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSwiftProtoTesting_Deprecated_stringExtField() {
    clearExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_string_ext_field)
  }

  /// NOTE: This extension field was marked as deprecated in the .proto file.
  var SwiftProtoTesting_Deprecated_intExtField: Int32 {
    get {return getExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_int_ext_field) ?? 0}
    set {setExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_int_ext_field, value: newValue)}
  }
  /// Returns true if extension `SwiftProtoTesting_Deprecated_Extensions_int_ext_field`
  /// has been explicitly set.
  var hasSwiftProtoTesting_Deprecated_intExtField: Bool {
    return hasExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_int_ext_field)
  }
  /// Clears the value of extension `SwiftProtoTesting_Deprecated_Extensions_int_ext_field`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSwiftProtoTesting_Deprecated_intExtField() {
    clearExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_int_ext_field)
  }

  /// NOTE: This extension field was marked as deprecated in the .proto file.
  var SwiftProtoTesting_Deprecated_fixedExtField: [UInt32] {
    get {return getExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_fixed_ext_field) ?? []}
    set {setExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_fixed_ext_field, value: newValue)}
  }

  /// NOTE: This extension field was marked as deprecated in the .proto file.
  var SwiftProtoTesting_Deprecated_msgExtField: SwiftProtoTesting_Deprecated_MyMsg {
    get {return getExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_msg_ext_field) ?? SwiftProtoTesting_Deprecated_MyMsg()}
    set {setExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_msg_ext_field, value: newValue)}
  }
  /// Returns true if extension `SwiftProtoTesting_Deprecated_Extensions_msg_ext_field`
  /// has been explicitly set.
  var hasSwiftProtoTesting_Deprecated_msgExtField: Bool {
    return hasExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_msg_ext_field)
  }
  /// Clears the value of extension `SwiftProtoTesting_Deprecated_Extensions_msg_ext_field`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSwiftProtoTesting_Deprecated_msgExtField() {
    clearExtensionValue(ext: SwiftProtoTesting_Deprecated_Extensions_msg_ext_field)
  }

  /// Another extension field comment
  ///
  /// NOTE: This extension field was marked as deprecated in the .proto file.
  var SwiftProtoTesting_Deprecated_MsgScope_stringExt2Field: String {
    get {return getExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.string_ext2_field) ?? String()}
    set {setExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.string_ext2_field, value: newValue)}
  }
  /// Returns true if extension `SwiftProtoTesting_Deprecated_MsgScope.Extensions.string_ext2_field`
  /// has been explicitly set.
  var hasSwiftProtoTesting_Deprecated_MsgScope_stringExt2Field: Bool {
    return hasExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.string_ext2_field)
  }
  /// Clears the value of extension `SwiftProtoTesting_Deprecated_MsgScope.Extensions.string_ext2_field`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSwiftProtoTesting_Deprecated_MsgScope_stringExt2Field() {
    clearExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.string_ext2_field)
  }

  /// NOTE: This extension field was marked as deprecated in the .proto file.
  var SwiftProtoTesting_Deprecated_MsgScope_intExt2Field: Int32 {
    get {return getExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.int_ext2_field) ?? 0}
    set {setExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.int_ext2_field, value: newValue)}
  }
  /// Returns true if extension `SwiftProtoTesting_Deprecated_MsgScope.Extensions.int_ext2_field`
  /// has been explicitly set.
  var hasSwiftProtoTesting_Deprecated_MsgScope_intExt2Field: Bool {
    return hasExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.int_ext2_field)
  }
  /// Clears the value of extension `SwiftProtoTesting_Deprecated_MsgScope.Extensions.int_ext2_field`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSwiftProtoTesting_Deprecated_MsgScope_intExt2Field() {
    clearExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.int_ext2_field)
  }

  /// NOTE: This extension field was marked as deprecated in the .proto file.
  var SwiftProtoTesting_Deprecated_MsgScope_fixedExt2Field: [UInt32] {
    get {return getExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.fixed_ext2_field) ?? []}
    set {setExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.fixed_ext2_field, value: newValue)}
  }

  /// NOTE: This extension field was marked as deprecated in the .proto file.
  var SwiftProtoTesting_Deprecated_MsgScope_msgExt2Field: SwiftProtoTesting_Deprecated_MyMsg {
    get {return getExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.msg_ext2_field) ?? SwiftProtoTesting_Deprecated_MyMsg()}
    set {setExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.msg_ext2_field, value: newValue)}
  }
  /// Returns true if extension `SwiftProtoTesting_Deprecated_MsgScope.Extensions.msg_ext2_field`
  /// has been explicitly set.
  var hasSwiftProtoTesting_Deprecated_MsgScope_msgExt2Field: Bool {
    return hasExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.msg_ext2_field)
  }
  /// Clears the value of extension `SwiftProtoTesting_Deprecated_MsgScope.Extensions.msg_ext2_field`.
  /// Subsequent reads from it will return its default value.
  mutating func clearSwiftProtoTesting_Deprecated_MsgScope_msgExt2Field() {
    clearExtensionValue(ext: SwiftProtoTesting_Deprecated_MsgScope.Extensions.msg_ext2_field)
  }

}

// MARK: - File's ExtensionMap: SwiftProtoTesting_Deprecated_UnittestSwiftDeprecated_Extensions

/// A `SwiftProtobuf.SimpleExtensionMap` that includes all of the extensions defined by
/// this .proto file. It can be used any place an `SwiftProtobuf.ExtensionMap` is needed
/// in parsing, or it can be combined with other `SwiftProtobuf.SimpleExtensionMap`s to create
/// a larger `SwiftProtobuf.SimpleExtensionMap`.
let SwiftProtoTesting_Deprecated_UnittestSwiftDeprecated_Extensions: SwiftProtobuf.SimpleExtensionMap = [
  SwiftProtoTesting_Deprecated_Extensions_string_ext_field,
  SwiftProtoTesting_Deprecated_Extensions_int_ext_field,
  SwiftProtoTesting_Deprecated_Extensions_fixed_ext_field,
  SwiftProtoTesting_Deprecated_Extensions_msg_ext_field,
  SwiftProtoTesting_Deprecated_MsgScope.Extensions.string_ext2_field,
  SwiftProtoTesting_Deprecated_MsgScope.Extensions.int_ext2_field,
  SwiftProtoTesting_Deprecated_MsgScope.Extensions.fixed_ext2_field,
  SwiftProtoTesting_Deprecated_MsgScope.Extensions.msg_ext2_field
]

// Extension Objects - The only reason these might be needed is when manually
// constructing a `SimpleExtensionMap`, otherwise, use the above _Extension Properties_
// accessors for the extension fields on the messages directly.

/// Extension field comment
///
/// NOTE: This extension field was marked as deprecated in the .proto file.
let SwiftProtoTesting_Deprecated_Extensions_string_ext_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufString>, SwiftProtoTesting_Deprecated_MyMsg>(
  _protobuf_fieldNumber: 101,
  fieldName: "swift_proto_testing.deprecated.string_ext_field"
)

/// NOTE: This extension field was marked as deprecated in the .proto file.
let SwiftProtoTesting_Deprecated_Extensions_int_ext_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, SwiftProtoTesting_Deprecated_MyMsg>(
  _protobuf_fieldNumber: 102,
  fieldName: "swift_proto_testing.deprecated.int_ext_field"
)

/// NOTE: This extension field was marked as deprecated in the .proto file.
let SwiftProtoTesting_Deprecated_Extensions_fixed_ext_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.RepeatedExtensionField<SwiftProtobuf.ProtobufFixed32>, SwiftProtoTesting_Deprecated_MyMsg>(
  _protobuf_fieldNumber: 103,
  fieldName: "swift_proto_testing.deprecated.fixed_ext_field"
)

/// NOTE: This extension field was marked as deprecated in the .proto file.
let SwiftProtoTesting_Deprecated_Extensions_msg_ext_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<SwiftProtoTesting_Deprecated_MyMsg>, SwiftProtoTesting_Deprecated_MyMsg>(
  _protobuf_fieldNumber: 104,
  fieldName: "swift_proto_testing.deprecated.msg_ext_field"
)

extension SwiftProtoTesting_Deprecated_MsgScope {
  enum Extensions {
    /// Another extension field comment
    ///
    /// NOTE: This extension field was marked as deprecated in the .proto file.
    static let string_ext2_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufString>, SwiftProtoTesting_Deprecated_MyMsg>(
      _protobuf_fieldNumber: 201,
      fieldName: "swift_proto_testing.deprecated.MsgScope.string_ext2_field"
    )

    /// NOTE: This extension field was marked as deprecated in the .proto file.
    static let int_ext2_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalExtensionField<SwiftProtobuf.ProtobufInt32>, SwiftProtoTesting_Deprecated_MyMsg>(
      _protobuf_fieldNumber: 202,
      fieldName: "swift_proto_testing.deprecated.MsgScope.int_ext2_field"
    )

    /// NOTE: This extension field was marked as deprecated in the .proto file.
    static let fixed_ext2_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.RepeatedExtensionField<SwiftProtobuf.ProtobufFixed32>, SwiftProtoTesting_Deprecated_MyMsg>(
      _protobuf_fieldNumber: 203,
      fieldName: "swift_proto_testing.deprecated.MsgScope.fixed_ext2_field"
    )

    /// NOTE: This extension field was marked as deprecated in the .proto file.
    static let msg_ext2_field = SwiftProtobuf.MessageExtension<SwiftProtobuf.OptionalMessageExtensionField<SwiftProtoTesting_Deprecated_MyMsg>, SwiftProtoTesting_Deprecated_MyMsg>(
      _protobuf_fieldNumber: 204,
      fieldName: "swift_proto_testing.deprecated.MsgScope.msg_ext2_field"
    )
  }
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "swift_proto_testing.deprecated"

extension SwiftProtoTesting_Deprecated_MyEnum: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "MYENUM_ONE"),
    2: .same(proto: "MYENUM_TWO"),
    3: .same(proto: "MYENUM_THREE"),
  ]
}

extension SwiftProtoTesting_Deprecated_MyEnum2: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "MYENUM2_ONE"),
    2: .same(proto: "MYENUM2_TWO"),
    3: .same(proto: "MYENUM2_THREE"),
  ]
}

extension SwiftProtoTesting_Deprecated_MyMsg: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MyMsg"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "string_field"),
    2: .standard(proto: "int_field"),
    3: .standard(proto: "fixed_field"),
    4: .standard(proto: "msg_field"),
  ]

  fileprivate class _StorageClass {
    var _stringField: String? = nil
    var _intField: Int32? = nil
    var _fixedField: [UInt32] = []
    var _msgField: SwiftProtoTesting_Deprecated_MyMsg? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _stringField = source._stringField
      _intField = source._intField
      _fixedField = source._fixedField
      _msgField = source._msgField
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    if !_protobuf_extensionFieldValues.isInitialized {return false}
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._intField == nil {return false}
      if let v = _storage._msgField, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._stringField) }()
        case 2: try { try decoder.decodeSingularInt32Field(value: &_storage._intField) }()
        case 3: try { try decoder.decodeRepeatedFixed32Field(value: &_storage._fixedField) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._msgField) }()
        case 100..<536870912:
          try { try decoder.decodeExtensionField(values: &_protobuf_extensionFieldValues, messageType: SwiftProtoTesting_Deprecated_MyMsg.self, fieldNumber: fieldNumber) }()
        default: break
        }
      }
    }
  }

  static let _fields: [Field<Self>] = [
    .singularString({ $0.stringField }, fieldNumber: 1, isUnset: { $0._storage._stringField == nil }),
    .singularInt32({ $0.intField }, fieldNumber: 2, isUnset: { $0._storage._intField == nil }),
    .repeatedFixed32({ $0.fixedField }, fieldNumber: 3),
    .singularMessage({ $0.msgField }, fieldNumber: 4, isUnset: { $0._storage._msgField == nil }),
    .extensionFields({ $0._protobuf_extensionFieldValues }, start: 100, end: 536870912),
  ]


  static func ==(lhs: SwiftProtoTesting_Deprecated_MyMsg, rhs: SwiftProtoTesting_Deprecated_MyMsg) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._stringField != rhs_storage._stringField {return false}
        if _storage._intField != rhs_storage._intField {return false}
        if _storage._fixedField != rhs_storage._fixedField {return false}
        if _storage._msgField != rhs_storage._msgField {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    if lhs._protobuf_extensionFieldValues != rhs._protobuf_extensionFieldValues {return false}
    return true
  }
}

extension SwiftProtoTesting_Deprecated_MsgScope: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MsgScope"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    // Load everything into unknown fields
    while try decoder.nextFieldNumber() != nil {}
  }

  static let _fields: [Field<Self>] = [
  ]


  static func ==(lhs: SwiftProtoTesting_Deprecated_MsgScope, rhs: SwiftProtoTesting_Deprecated_MsgScope) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SwiftProtoTesting_Deprecated_MyMsg2: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MyMsg2"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "string_field"),
    2: .standard(proto: "int_field"),
    3: .standard(proto: "fixed_field"),
    4: .standard(proto: "msg_field"),
  ]

  fileprivate class _StorageClass {
    var _stringField: String? = nil
    var _intField: Int32? = nil
    var _fixedField: [UInt32] = []
    var _msgField: SwiftProtoTesting_Deprecated_MyMsg2? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _stringField = source._stringField
      _intField = source._intField
      _fixedField = source._fixedField
      _msgField = source._msgField
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  public var isInitialized: Bool {
    return withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      if _storage._intField == nil {return false}
      if let v = _storage._msgField, !v.isInitialized {return false}
      return true
    }
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularStringField(value: &_storage._stringField) }()
        case 2: try { try decoder.decodeSingularInt32Field(value: &_storage._intField) }()
        case 3: try { try decoder.decodeRepeatedFixed32Field(value: &_storage._fixedField) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._msgField) }()
        default: break
        }
      }
    }
  }

  static let _fields: [Field<Self>] = [
    .singularString({ $0.stringField }, fieldNumber: 1, isUnset: { $0._storage._stringField == nil }),
    .singularInt32({ $0.intField }, fieldNumber: 2, isUnset: { $0._storage._intField == nil }),
    .repeatedFixed32({ $0.fixedField }, fieldNumber: 3),
    .singularMessage({ $0.msgField }, fieldNumber: 4, isUnset: { $0._storage._msgField == nil }),
  ]


  static func ==(lhs: SwiftProtoTesting_Deprecated_MyMsg2, rhs: SwiftProtoTesting_Deprecated_MyMsg2) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._stringField != rhs_storage._stringField {return false}
        if _storage._intField != rhs_storage._intField {return false}
        if _storage._fixedField != rhs_storage._fixedField {return false}
        if _storage._msgField != rhs_storage._msgField {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
