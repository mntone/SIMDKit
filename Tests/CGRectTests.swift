import XCTest
@testable import SIMDKit

fileprivate typealias CGTarget = CGRect

extension CGTarget {
	fileprivate init(a: CGFloat, b: CGFloat, c: CGFloat, d: CGFloat) {
		self.init(x: a, y: b, width: c, height: d)
	}
}

final class CGRectTests: XCTestCase {
	private let left = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
	private let right = CGTarget(a: 3.0, b: 2.0, c: 1.0, d: 0.0)
	
	// --- [ Functions ] ------
	func testCGRect_Functions_AbsPlusPlus() {
		let value = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testCGRect_Functions_AbsPlusMinus() {
		let value = CGTarget(a: 4.0, b: -5.0, c: 6.0, d: -7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testCGRect_Functions_AbsMinusPlus() {
		let value = CGTarget(a: -4.0, b: 5.0, c: -6.0, d: 7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testCGRect_Functions_AbsMinusMinus() {
		let value = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testCGRect_Functions_Ceil() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 5.0, b: 6.0, c: 7.0, d: 8.0)
		XCTAssertEqual(expected, ceil(value))
	}
	
	func testCGRect_Functions_CeilMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, ceil(value))
	}
	
	func testCGRect_Functions_Floor() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, floor(value))
	}
	
	func testCGRect_Functions_FloorMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -5.0, b: -6.0, c: -7.0, d: -8.0)
		XCTAssertEqual(expected, floor(value))
	}
	
	func testCGRect_Functions_Round() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testCGRect_Functions_RoundMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testCGRect_Functions_Trunc() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testCGRect_Functions_TruncMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testCGRect_Functions_Max() {
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, max(left, right))
	}
	
	func testCGRect_Functions_Min() {
		let expected = CGTarget(a: 3.0, b: 2.0, c: 1.0, d: 0.0)
		XCTAssertEqual(expected, min(left, right))
	}
	
	func testCGRect_Functions_ReduceMax() {
		let expected: CGFloat = 7.0
		XCTAssertEqual(expected, reduce_max(left))
	}
	
	func testCGRect_Functions_ReduceMin() {
		let expected: CGFloat = 4.0
		XCTAssertEqual(expected, reduce_min(left))
	}
	
	func testCGRect_Functions_Clamp() {
		let expected = CGTarget(a: 4.3, b: 5.0, c: 6.0, d: 6.7)
		XCTAssertEqual(expected, clamp(left, min: 4.3, max: 6.7))
	}
	
	// --- [ Mutatings ] ------
	func testCGRect_Mutatings_AddX() {
		var temp = left
		temp.add(x: 2.0)
		
		let expected = CGTarget(a: 6.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Mutatings_AddY() {
		var temp = left
		temp.add(y: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Mutatings_AddXY() {
		var temp = left
		temp.add(x: 2.0, y: 3.0)
		
		let expected = CGTarget(a: 6.0, b: 8.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Mutatings_AddOffset() {
		var temp = left
		temp.add(offset: 2.5)
		
		let expected = CGTarget(a: 6.5, b: 7.5, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Nonmutatings ] ------
	func testCGRect_Nonmutatings_AddingX() {
		let temp = left.adding(x: 2.0)
		
		let expected = CGTarget(a: 6.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Nonmutatings_AddingY() {
		let temp = left.adding(y: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Nonmutatings_AddingXY() {
		let temp = left.adding(x: 2.0, y: 3.0)
		
		let expected = CGTarget(a: 6.0, b: 8.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Nonmutatings_AddingOffset() {
		let temp = left.adding(offset: 2.5)
		
		let expected = CGTarget(a: 6.5, b: 7.5, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Nonmutatings_SettingX() {
		let temp = left.setting(x: 2.0)
		
		let expected = CGTarget(a: 2.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Nonmutatings_SettingY() {
		let temp = left.setting(y: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 3.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Nonmutatings_SettingXY() {
		let temp = left.setting(x: 2.0, y: 3.0)
		
		let expected = CGTarget(a: 2.0, b: 3.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Operators: ?V ] ------
	func testCGRect_Operators_Negative() {
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, -left)
	}
	
	// --- [ Operators: V ? V ] ------
	func testCGRect_Operators_Add() {
		let expected = CGTarget(a: 7.0, b: 7.0, c: 7.0, d: 7.0)
		XCTAssertEqual(expected, left + right)
	}
	
	func testCGRect_Operators_Sub() {
		let expected = CGTarget(a: 1.0, b: 3.0, c: 5.0, d: 7.0)
		XCTAssertEqual(expected, left - right)
	}
	
	func testCGRect_Operators_Mul() {
		let expected = CGTarget(a: 12.0, b: 10.0, c: 6.0, d: 0.0)
		XCTAssertEqual(expected, left * right)
	}
	
	func testCGRect_Operators_Dev() {
		let expected = CGTarget(a: 4.0 / 3.0, b: 2.5, c: 6.0, d: CGFloat.infinity)
		XCTAssertEqual(expected, left / right)
	}
	
	// --- [ Operators: C ? V ] ------
	func testCGRect_Operators_AddLeftConst() {
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, 3.0 + left)
	}
	
	func testCGRect_Operators_SubLeftConst() {
		let expected = CGTarget(a: -1.0, b: -2.0, c: -3.0, d: -4.0)
		XCTAssertEqual(expected, 3.0 - left)
	}
	
	func testCGRect_Operators_MulLeftConst() {
		let expected = CGTarget(a: 12.0, b: 15.0, c: 18.0, d: 21.0)
		XCTAssertEqual(expected, 3.0 * left)
	}
	
	func testCGRect_Operators_DevLeftConst() {
		let expected = CGTarget(a: 3.0 / 4.0, b: 3.0 / 5.0, c: 0.5, d: 3.0 / 7.0)
		XCTAssertEqual(expected, 3.0 / left)
	}
	
	// --- [ Operators: V ? C ] ------
	func testCGRect_Operators_AddRightConst() {
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, left + 3.0)
	}
	
	func testCGRect_Operators_SubRightConst() {
		let expected = CGTarget(a: 1.0, b: 2.0, c: 3.0, d: 4.0)
		XCTAssertEqual(expected, left - 3.0)
	}
	
	func testCGRect_Operators_MulRightConst() {
		let expected = CGTarget(a: 12.0, b: 15.0, c: 18.0, d: 21.0)
		XCTAssertEqual(expected, left * 3.0)
	}
	
	func testCGRect_Operators_DevRightConst() {
		let expected = CGTarget(a: 4.0 / 3.0, b: 5.0 / 3.0, c: 2.0, d: 7.0 / 3.0)
		XCTAssertEqual(expected, left / 3.0)
	}
	
	// --- [ Operators: V ?= V ] ------
	func testCGRect_Operators_AddAsg() {
		var temp = left
		temp += right
		
		let expected = CGTarget(a: 7.0, b: 7.0, c: 7.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Operators_SubAsg() {
		var temp = left
		temp -= right
		
		let expected = CGTarget(a: 1.0, b: 3.0, c: 5.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Operators_MulAsg() {
		var temp = left
		temp *= right
		
		let expected = CGTarget(a: 12.0, b: 10.0, c: 6.0, d: 0.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Operators_DevAsg() {
		var temp = left
		temp /= right
		
		let expected = CGTarget(a: 4.0 / 3.0, b: 2.5, c: 6.0, d: CGFloat.infinity)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Operators: V ?= C ] ------
	func testCGRect_Operators_AddConstAsg() {
		var temp = left
		temp += 3.0
		
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Operators_SubConstAsg() {
		var temp = left
		temp -= 3.0
		
		let expected = CGTarget(a: 1.0, b: 2.0, c: 3.0, d: 4.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Operators_MulConstAsg() {
		var temp = left
		temp *= 3.0
		
		let expected = CGTarget(a: 12.0, b: 15.0, c: 18.0, d: 21.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGRect_Operators_DevConstAsg() {
		var temp = left
		temp /= 3.0
		
		let expected = CGTarget(a: 4.0 / 3.0, b: 5.0 / 3.0, c: 2.0, d: 7.0 / 3.0)
		XCTAssertEqual(expected, temp)
	}
}
