import struct AppKit.NSEdgeInsets
import XCTest
@testable import SIMDKit

extension NSEdgeInsets: Equatable {
	public static func == (lhs: NSEdgeInsets, rhs: NSEdgeInsets) -> Bool {
		return NSEdgeInsetsEqual(lhs, rhs)
	}
}

fileprivate typealias CGTarget = NSEdgeInsets

extension CGTarget {
	fileprivate init(a: CGFloat, b: CGFloat, c: CGFloat, d: CGFloat) {
		self.init(top: a, left: b, bottom: c, right: d)
	}
}

final class NSEdgeInsetsTests: XCTestCase {
	private let left = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
	private let right = CGTarget(a: 3.0, b: 2.0, c: 1.0, d: 0.0)
	
	// --- [ Functions ] ------
	func testNSEdgeInsets_Functions_AbsPlusPlus() {
		let value = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testNSEdgeInsets_Functions_AbsPlusMinus() {
		let value = CGTarget(a: 4.0, b: -5.0, c: 6.0, d: -7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testNSEdgeInsets_Functions_AbsMinusPlus() {
		let value = CGTarget(a: -4.0, b: 5.0, c: -6.0, d: 7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testNSEdgeInsets_Functions_AbsMinusMinus() {
		let value = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testNSEdgeInsets_Functions_Ceil() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 5.0, b: 6.0, c: 7.0, d: 8.0)
		XCTAssertEqual(expected, ceil(value))
	}
	
	func testNSEdgeInsets_Functions_CeilMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, ceil(value))
	}
	
	func testNSEdgeInsets_Functions_Floor() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, floor(value))
	}
	
	func testNSEdgeInsets_Functions_FloorMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -5.0, b: -6.0, c: -7.0, d: -8.0)
		XCTAssertEqual(expected, floor(value))
	}
	
	func testNSEdgeInsets_Functions_Round() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testNSEdgeInsets_Functions_RoundMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testNSEdgeInsets_Functions_Trunc() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testNSEdgeInsets_Functions_TruncMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testNSEdgeInsets_Functions_Max() {
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, max(left, right))
	}
	
	func testNSEdgeInsets_Functions_Min() {
		let expected = CGTarget(a: 3.0, b: 2.0, c: 1.0, d: 0.0)
		XCTAssertEqual(expected, min(left, right))
	}
	
	func testNSEdgeInsets_Functions_ReduceMax() {
		let expected: CGFloat = 7.0
		XCTAssertEqual(expected, reduce_max(left))
	}
	
	func testNSEdgeInsets_Functions_ReduceMin() {
		let expected: CGFloat = 4.0
		XCTAssertEqual(expected, reduce_min(left))
	}
	
	func testNSEdgeInsets_Functions_Clamp() {
		let expected = CGTarget(a: 4.3, b: 5.0, c: 6.0, d: 6.7)
		XCTAssertEqual(expected, clamp(left, min: 4.3, max: 6.7))
	}
	
	// --- [ Mutatings ] ------
	func testNSEdgeInsets_Mutatings_AddTop() {
		var temp = left
		temp.add(top: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Mutatings_AddLeft() {
		var temp = left
		temp.add(left: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Mutatings_AddBottom() {
		var temp = left
		temp.add(bottom: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 9.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Mutatings_AddRight() {
		var temp = left
		temp.add(right: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Mutatings_AddVertical() {
		var temp = left
		temp.add(vertical: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 5.0, c: 9.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Mutatings_AddHorizontal() {
		var temp = left
		temp.add(horizontal: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Mutatings_AddAll() {
		var temp = left
		temp.add(all: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Nonmutatings ] ------
	func testNSEdgeInsets_Nonmutatings_AddingTop() {
		let temp = left.adding(top: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_AddingLeft() {
		let temp = left.adding(left: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_AddingBottom() {
		let temp = left.adding(bottom: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 9.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_AddingRight() {
		let temp = left.adding(right: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_AddingVertical() {
		let temp = left.adding(vertical: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 5.0, c: 9.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_AddingHorizontal() {
		let temp = left.adding(horizontal: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_AddingAll() {
		let temp = left.adding(all: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_SettingTop() {
		let temp = left.setting(top: 3.0)
		
		let expected = CGTarget(a: 3.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_SettingLeft() {
		let temp = left.setting(left: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 3.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_SettingBottom() {
		let temp = left.setting(bottom: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 3.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_SettingRight() {
		let temp = left.setting(right: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 3.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_SettingVertical() {
		let temp = left.setting(vertical: 3.0)
		
		let expected = CGTarget(a: 3.0, b: 5.0, c: 3.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Nonmutatings_SettingHorizontal() {
		let temp = left.setting(horizontal: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 3.0, c: 6.0, d: 3.0)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Operators: ?V ] ------
	func testNSEdgeInsets_Operators_Negative() {
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, -left)
	}
	
	// --- [ Operators: V ? V ] ------
	func testNSEdgeInsets_Operators_Add() {
		let expected = CGTarget(a: 7.0, b: 7.0, c: 7.0, d: 7.0)
		XCTAssertEqual(expected, left + right)
	}
	
	func testNSEdgeInsets_Operators_Sub() {
		let expected = CGTarget(a: 1.0, b: 3.0, c: 5.0, d: 7.0)
		XCTAssertEqual(expected, left - right)
	}
	
	func testNSEdgeInsets_Operators_Mul() {
		let expected = CGTarget(a: 12.0, b: 10.0, c: 6.0, d: 0.0)
		XCTAssertEqual(expected, left * right)
	}
	
	func testNSEdgeInsets_Operators_Dev() {
		let expected = CGTarget(a: 4.0 / 3.0, b: 2.5, c: 6.0, d: CGFloat.infinity)
		XCTAssertEqual(expected, left / right)
	}
	
	// --- [ Operators: C ? V ] ------
	func testNSEdgeInsets_Operators_AddLeftConst() {
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, 3.0 + left)
	}
	
	func testNSEdgeInsets_Operators_SubLeftConst() {
		let expected = CGTarget(a: -1.0, b: -2.0, c: -3.0, d: -4.0)
		XCTAssertEqual(expected, 3.0 - left)
	}
	
	func testNSEdgeInsets_Operators_MulLeftConst() {
		let expected = CGTarget(a: 12.0, b: 15.0, c: 18.0, d: 21.0)
		XCTAssertEqual(expected, 3.0 * left)
	}
	
	func testNSEdgeInsets_Operators_DevLeftConst() {
		let expected = CGTarget(a: 3.0 / 4.0, b: 3.0 / 5.0, c: 0.5, d: 3.0 / 7.0)
		XCTAssertEqual(expected, 3.0 / left)
	}
	
	// --- [ Operators: V ? C ] ------
	func testNSEdgeInsets_Operators_AddRightConst() {
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, left + 3.0)
	}
	
	func testNSEdgeInsets_Operators_SubRightConst() {
		let expected = CGTarget(a: 1.0, b: 2.0, c: 3.0, d: 4.0)
		XCTAssertEqual(expected, left - 3.0)
	}
	
	func testNSEdgeInsets_Operators_MulRightConst() {
		let expected = CGTarget(a: 12.0, b: 15.0, c: 18.0, d: 21.0)
		XCTAssertEqual(expected, left * 3.0)
	}
	
	func testNSEdgeInsets_Operators_DevRightConst() {
		let expected = CGTarget(a: 4.0 / 3.0, b: 5.0 / 3.0, c: 2.0, d: 7.0 / 3.0)
		XCTAssertEqual(expected, left / 3.0)
	}
	
	// --- [ Operators: V ?= V ] ------
	func testNSEdgeInsets_Operators_AddAsg() {
		var temp = left
		temp += right
		
		let expected = CGTarget(a: 7.0, b: 7.0, c: 7.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Operators_SubAsg() {
		var temp = left
		temp -= right
		
		let expected = CGTarget(a: 1.0, b: 3.0, c: 5.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Operators_MulAsg() {
		var temp = left
		temp *= right
		
		let expected = CGTarget(a: 12.0, b: 10.0, c: 6.0, d: 0.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Operators_DevAsg() {
		var temp = left
		temp /= right
		
		let expected = CGTarget(a: 4.0 / 3.0, b: 2.5, c: 6.0, d: CGFloat.infinity)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Operators: V ?= C ] ------
	func testNSEdgeInsets_Operators_AddConstAsg() {
		var temp = left
		temp += 3.0
		
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Operators_SubConstAsg() {
		var temp = left
		temp -= 3.0
		
		let expected = CGTarget(a: 1.0, b: 2.0, c: 3.0, d: 4.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Operators_MulConstAsg() {
		var temp = left
		temp *= 3.0
		
		let expected = CGTarget(a: 12.0, b: 15.0, c: 18.0, d: 21.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSEdgeInsets_Operators_DevConstAsg() {
		var temp = left
		temp /= 3.0
		
		let expected = CGTarget(a: 4.0 / 3.0, b: 5.0 / 3.0, c: 2.0, d: 7.0 / 3.0)
		XCTAssertEqual(expected, temp)
	}
}
