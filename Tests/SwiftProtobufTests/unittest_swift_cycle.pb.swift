// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: unittest_swift_cycle.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

// Protocol Buffers - Google's data interchange format
// Copyright 2015 Google Inc.  All rights reserved.
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

struct SwiftProtoTesting_CycleFoo: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var aFoo: SwiftProtoTesting_CycleFoo {
    get {return _storage._aFoo ?? SwiftProtoTesting_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  /// Returns true if `aFoo` has been explicitly set.
  var hasAFoo: Bool {return _storage._aFoo != nil}
  /// Clears the value of `aFoo`. Subsequent reads from it will return its default value.
  mutating func clearAFoo() {_uniqueStorage()._aFoo = nil}

  var aBar: SwiftProtoTesting_CycleBar {
    get {return _storage._aBar ?? SwiftProtoTesting_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  /// Returns true if `aBar` has been explicitly set.
  var hasABar: Bool {return _storage._aBar != nil}
  /// Clears the value of `aBar`. Subsequent reads from it will return its default value.
  mutating func clearABar() {_uniqueStorage()._aBar = nil}

  var aBaz: SwiftProtoTesting_CycleBaz {
    get {return _storage._aBaz ?? SwiftProtoTesting_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  /// Returns true if `aBaz` has been explicitly set.
  var hasABaz: Bool {return _storage._aBaz != nil}
  /// Clears the value of `aBaz`. Subsequent reads from it will return its default value.
  mutating func clearABaz() {_uniqueStorage()._aBaz = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct SwiftProtoTesting_CycleBar: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var aBar: SwiftProtoTesting_CycleBar {
    get {return _storage._aBar ?? SwiftProtoTesting_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  /// Returns true if `aBar` has been explicitly set.
  var hasABar: Bool {return _storage._aBar != nil}
  /// Clears the value of `aBar`. Subsequent reads from it will return its default value.
  mutating func clearABar() {_uniqueStorage()._aBar = nil}

  var aBaz: SwiftProtoTesting_CycleBaz {
    get {return _storage._aBaz ?? SwiftProtoTesting_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  /// Returns true if `aBaz` has been explicitly set.
  var hasABaz: Bool {return _storage._aBaz != nil}
  /// Clears the value of `aBaz`. Subsequent reads from it will return its default value.
  mutating func clearABaz() {_uniqueStorage()._aBaz = nil}

  var aFoo: SwiftProtoTesting_CycleFoo {
    get {return _storage._aFoo ?? SwiftProtoTesting_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  /// Returns true if `aFoo` has been explicitly set.
  var hasAFoo: Bool {return _storage._aFoo != nil}
  /// Clears the value of `aFoo`. Subsequent reads from it will return its default value.
  mutating func clearAFoo() {_uniqueStorage()._aFoo = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

struct SwiftProtoTesting_CycleBaz: @unchecked Sendable {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var aBaz: SwiftProtoTesting_CycleBaz {
    get {return _storage._aBaz ?? SwiftProtoTesting_CycleBaz()}
    set {_uniqueStorage()._aBaz = newValue}
  }
  /// Returns true if `aBaz` has been explicitly set.
  var hasABaz: Bool {return _storage._aBaz != nil}
  /// Clears the value of `aBaz`. Subsequent reads from it will return its default value.
  mutating func clearABaz() {_uniqueStorage()._aBaz = nil}

  var aFoo: SwiftProtoTesting_CycleFoo {
    get {return _storage._aFoo ?? SwiftProtoTesting_CycleFoo()}
    set {_uniqueStorage()._aFoo = newValue}
  }
  /// Returns true if `aFoo` has been explicitly set.
  var hasAFoo: Bool {return _storage._aFoo != nil}
  /// Clears the value of `aFoo`. Subsequent reads from it will return its default value.
  mutating func clearAFoo() {_uniqueStorage()._aFoo = nil}

  var aBar: SwiftProtoTesting_CycleBar {
    get {return _storage._aBar ?? SwiftProtoTesting_CycleBar()}
    set {_uniqueStorage()._aBar = newValue}
  }
  /// Returns true if `aBar` has been explicitly set.
  var hasABar: Bool {return _storage._aBar != nil}
  /// Clears the value of `aBar`. Subsequent reads from it will return its default value.
  mutating func clearABar() {_uniqueStorage()._aBar = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "swift_proto_testing"

extension SwiftProtoTesting_CycleFoo: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CycleFoo"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "a_foo"),
    2: .standard(proto: "a_bar"),
    3: .standard(proto: "a_baz"),
  ]

  fileprivate class _StorageClass {
    var _aFoo: SwiftProtoTesting_CycleFoo? = nil
    var _aBar: SwiftProtoTesting_CycleBar? = nil
    var _aBaz: SwiftProtoTesting_CycleBaz? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _aFoo = source._aFoo
      _aBar = source._aBar
      _aBaz = source._aBaz
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._aFoo) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._aBar) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._aBaz) }()
        default: break
        }
      }
    }
  }

  static let _fields: [Field<Self>] = [
    .singularMessage({ $0._storage._aFoo }, fieldNumber: 1),
    .singularMessage({ $0._storage._aBar }, fieldNumber: 2),
    .singularMessage({ $0._storage._aBaz }, fieldNumber: 3),
  ]


  static func ==(lhs: SwiftProtoTesting_CycleFoo, rhs: SwiftProtoTesting_CycleFoo) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._aFoo != rhs_storage._aFoo {return false}
        if _storage._aBar != rhs_storage._aBar {return false}
        if _storage._aBaz != rhs_storage._aBaz {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SwiftProtoTesting_CycleBar: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CycleBar"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "a_bar"),
    2: .standard(proto: "a_baz"),
    3: .standard(proto: "a_foo"),
  ]

  fileprivate class _StorageClass {
    var _aBar: SwiftProtoTesting_CycleBar? = nil
    var _aBaz: SwiftProtoTesting_CycleBaz? = nil
    var _aFoo: SwiftProtoTesting_CycleFoo? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _aBar = source._aBar
      _aBaz = source._aBaz
      _aFoo = source._aFoo
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._aBar) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._aBaz) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._aFoo) }()
        default: break
        }
      }
    }
  }

  static let _fields: [Field<Self>] = [
    .singularMessage({ $0._storage._aBar }, fieldNumber: 1),
    .singularMessage({ $0._storage._aBaz }, fieldNumber: 2),
    .singularMessage({ $0._storage._aFoo }, fieldNumber: 3),
  ]


  static func ==(lhs: SwiftProtoTesting_CycleBar, rhs: SwiftProtoTesting_CycleBar) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._aBar != rhs_storage._aBar {return false}
        if _storage._aBaz != rhs_storage._aBaz {return false}
        if _storage._aFoo != rhs_storage._aFoo {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension SwiftProtoTesting_CycleBaz: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".CycleBaz"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "a_baz"),
    2: .standard(proto: "a_foo"),
    3: .standard(proto: "a_bar"),
  ]

  fileprivate class _StorageClass {
    var _aBaz: SwiftProtoTesting_CycleBaz? = nil
    var _aFoo: SwiftProtoTesting_CycleFoo? = nil
    var _aBar: SwiftProtoTesting_CycleBar? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _aBaz = source._aBaz
      _aFoo = source._aFoo
      _aBar = source._aBar
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularMessageField(value: &_storage._aBaz) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._aFoo) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._aBar) }()
        default: break
        }
      }
    }
  }

  static let _fields: [Field<Self>] = [
    .singularMessage({ $0._storage._aBaz }, fieldNumber: 1),
    .singularMessage({ $0._storage._aFoo }, fieldNumber: 2),
    .singularMessage({ $0._storage._aBar }, fieldNumber: 3),
  ]


  static func ==(lhs: SwiftProtoTesting_CycleBaz, rhs: SwiftProtoTesting_CycleBaz) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._aBaz != rhs_storage._aBaz {return false}
        if _storage._aFoo != rhs_storage._aFoo {return false}
        if _storage._aBar != rhs_storage._aBar {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
