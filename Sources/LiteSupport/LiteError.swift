/// LiteError.swift
///
/// Copyright 2017, The Silt Language Project.
///
/// This project is released under the MIT license, a copy of which is
/// available in the repository.

import Foundation

/// Diagnostic messages that `lite` might throw.
public struct LiteError: Error {
  public let message: String

  /// The test directory could not be found on the file system.
  static func couldNotOpenTestDir(_ path: String) -> LiteError {
    return LiteError(message: "could not open test directory at '\(path)'")
  }

  /// The test directory is not actually a directory.
  static func testDirIsNotDirectory(_ path: String) -> LiteError {
    return LiteError(message: "'\(path)' is not a directory")
  }
}
