import XCTest
@testable import SIMDKit

fileprivate typealias CGTarget = CGPoint

extension CGTarget {
	fileprivate init(a: CGFloat, b: CGFloat) {
		self.init(x: a, y: b)
	}
}

final class CGPointTests: XCTestCase {
	private let left = CGTarget(a: 4.0, b: 5.0)
	private let right = CGTarget(a: 3.0, b: 2.0)
	
	// --- [ Functions ] ------
	func testCGPoint_Functions_AbsPlusPlus() {
		let value = CGTarget(a: 4.0, b: 5.0)
		let expected = CGTarget(a: 4.0, b: 5.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testCGPoint_Functions_AbsPlusMinus() {
		let value = CGTarget(a: 4.0, b: -5.0)
		let expected = CGTarget(a: 4.0, b: 5.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testCGPoint_Functions_AbsMinusPlus() {
		let value = CGTarget(a: -4.0, b: 5.0)
		let expected = CGTarget(a: 4.0, b: 5.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testCGPoint_Functions_AbsMinusMinus() {
		let value = CGTarget(a: -4.0, b: -5.0)
		let expected = CGTarget(a: 4.0, b: 5.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testCGPoint_Functions_Ceil() {
		let value = CGTarget(a: 4.5, b: 5.3)
		let expected = CGTarget(a: 5.0, b: 6.0)
		XCTAssertEqual(expected, ceil(value))
	}
	
	func testCGPoint_Functions_CeilMinus() {
		let value = CGTarget(a: -4.5, b: -5.3)
		let expected = CGTarget(a: -4.0, b: -5.0)
		XCTAssertEqual(expected, ceil(value))
	}
	
	func testCGPoint_Functions_Floor() {
		let value = CGTarget(a: 4.5, b: 5.3)
		let expected = CGTarget(a: 4.0, b: 5.0)
		XCTAssertEqual(expected, floor(value))
	}
	
	func testCGPoint_Functions_FloorMinus() {
		let value = CGTarget(a: -4.5, b: -5.3)
		let expected = CGTarget(a: -5.0, b: -6.0)
		XCTAssertEqual(expected, floor(value))
	}
	
	func testCGPoint_Functions_Round() {
		let value = CGTarget(a: 4.5, b: 5.3)
		let expected = CGTarget(a: 4.0, b: 5.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testCGPoint_Functions_RoundMinus() {
		let value = CGTarget(a: -4.5, b: -5.3)
		let expected = CGTarget(a: -4.0, b: -5.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testCGPoint_Functions_Trunc() {
		let value = CGTarget(a: 4.5, b: 5.3)
		let expected = CGTarget(a: 4.0, b: 5.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testCGPoint_Functions_TruncMinus() {
		let value = CGTarget(a: -4.5, b: -5.3)
		let expected = CGTarget(a: -4.0, b: -5.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testCGPoint_Functions_Max() {
		let expected = CGTarget(a: 4.0, b: 5.0)
		XCTAssertEqual(expected, max(left, right))
	}
	
	func testCGPoint_Functions_MaxMin() {
		let expected = CGTarget(a: 4.0, b: 2.0)
		XCTAssertEqual(expected, maxmin(left, right))
	}
	
	func testCGPoint_Functions_Min() {
		let expected = CGTarget(a: 3.0, b: 2.0)
		XCTAssertEqual(expected, min(left, right))
	}
	
	func testCGPoint_Functions_MinMax() {
		let expected = CGTarget(a: 3.0, b: 5.0)
		XCTAssertEqual(expected, minmax(left, right))
	}
	
	func testCGPoint_Functions_ReduceMax() {
		let expected: CGFloat = 5.0
		XCTAssertEqual(expected, reduce_max(left))
	}
	
	func testCGPoint_Functions_ReduceMin() {
		let expected: CGFloat = 4.0
		XCTAssertEqual(expected, reduce_min(left))
	}
	
	func testCGPoint_Functions_Clamp() {
		let expected = CGTarget(a: 4.3, b: 4.7)
		XCTAssertEqual(expected, clamp(left, min: 4.3, max: 4.7))
	}
	
	func testCGPoint_Functions_Length() {
		let expected: CGFloat = sqrt(41.0)
		XCTAssertEqual(expected, length(left))
	}
	
	func testCGPoint_Functions_LengthSquared() {
		let expected: CGFloat = 41.0
		XCTAssertEqual(expected, length_squared(left))
	}
	
	// --- [ Mutatings ] ------
	func testCGPoint_Mutatings_AddX() {
		var temp = left
		temp.add(x: 2.0)
		
		let expected = CGTarget(a: 6.0, b: 5.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Mutatings_AddY() {
		var temp = left
		temp.add(y: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Mutatings_AddXY() {
		var temp = left
		temp.add(x: 2.0, y: 3.0)
		
		let expected = CGTarget(a: 6.0, b: 8.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Mutatings_AddOffset() {
		var temp = left
		temp.add(offset: 2.5)
		
		let expected = CGTarget(a: 6.5, b: 7.5)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Nonmutatings ] ------
	func testCGPoint_Nonmutatings_AddingX() {
		let temp = left.adding(x: 2.0)
		
		let expected = CGTarget(a: 6.0, b: 5.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Nonmutatings_AddingY() {
		let temp = left.adding(y: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Nonmutatings_AddingXY() {
		let temp = left.adding(x: 2.0, y: 3.0)
		
		let expected = CGTarget(a: 6.0, b: 8.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Nonmutatings_AddingOffset() {
		let temp = left.adding(offset: 2.5)
		
		let expected = CGTarget(a: 6.5, b: 7.5)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Nonmutatings_SettingX() {
		let temp = left.setting(x: 2.0)
		
		let expected = CGTarget(a: 2.0, b: 5.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Nonmutatings_SettingY() {
		let temp = left.setting(y: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 3.0)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Operators: ?V ] ------
	func testCGPoint_Operators_Negative() {
		let expected = CGTarget(a: -4.0, b: -5.0)
		XCTAssertEqual(expected, -left)
	}
	
	// --- [ Operators: V ? V ] ------
	func testCGPoint_Operators_Add() {
		let expected = CGTarget(a: 7.0, b: 7.0)
		XCTAssertEqual(expected, left + right)
	}
	
	func testCGPoint_Operators_Sub() {
		let expected = CGTarget(a: 1.0, b: 3.0)
		XCTAssertEqual(expected, left - right)
	}
	
	func testCGPoint_Operators_AddSub() {
		let expected = CGTarget(a: 7.0, b: 3.0)
		XCTAssertEqual(expected, left +- right)
	}
	
	func testCGPoint_Operators_SubAdd() {
		let expected = CGTarget(a: 1.0, b: 7.0)
		XCTAssertEqual(expected, left -+ right)
	}
	
	func testCGPoint_Operators_Mul() {
		let expected = CGTarget(a: 12.0, b: 10.0)
		XCTAssertEqual(expected, left * right)
	}
	
	func testCGPoint_Operators_Dev() {
		let expected = CGTarget(a: 4.0 / 3.0, b: 2.5)
		XCTAssertEqual(expected, left / right)
	}
	
	// --- [ Operators: C ? V ] ------
	func testCGPoint_Operators_AddLeftConst() {
		let expected = CGTarget(a: 7.0, b: 8.0)
		XCTAssertEqual(expected, 3.0 + left)
	}
	
	func testCGPoint_Operators_SubLeftConst() {
		let expected = CGTarget(a: -1.0, b: -2.0)
		XCTAssertEqual(expected, 3.0 - left)
	}
	
	func testCGPoint_Operators_AddSubLeftConst() {
		let expected = CGTarget(a: 7.0, b: -2.0)
		XCTAssertEqual(expected, 3.0 +- left)
	}
	
	func testCGPoint_Operators_SubAddLeftConst() {
		let expected = CGTarget(a: -1.0, b: 8.0)
		XCTAssertEqual(expected, 3.0 -+ left)
	}
	
	func testCGPoint_Operators_MulLeftConst() {
		let expected = CGTarget(a: 12.0, b: 15.0)
		XCTAssertEqual(expected, 3.0 * left)
	}
	
	func testCGPoint_Operators_DevLeftConst() {
		let expected = CGTarget(a: 3.0 / 4.0, b: 3.0 / 5.0)
		XCTAssertEqual(expected, 3.0 / left)
	}
	
	// --- [ Operators: V ? C ] ------
	func testCGPoint_Operators_AddRightConst() {
		let expected = CGTarget(a: 7.0, b: 8.0)
		XCTAssertEqual(expected, left + 3.0)
	}
	
	func testCGPoint_Operators_SubRightConst() {
		let expected = CGTarget(a: 1.0, b: 2.0)
		XCTAssertEqual(expected, left - 3.0)
	}
	
	func testCGPoint_Operators_AddSubRightConst() {
		let expected = CGTarget(a: 7.0, b: 2.0)
		XCTAssertEqual(expected, left +- 3.0)
	}
	
	func testCGPoint_Operators_SubAddRightConst() {
		let expected = CGTarget(a: 1.0, b: 8.0)
		XCTAssertEqual(expected, left -+ 3.0)
	}
	
	func testCGPoint_Operators_MulRightConst() {
		let expected = CGTarget(a: 12.0, b: 15.0)
		XCTAssertEqual(expected, left * 3.0)
	}
	
	func testCGPoint_Operators_DevRightConst() {
		let expected = CGTarget(a: 4.0 / 3.0, b: 5.0 / 3.0)
		XCTAssertEqual(expected, left / 3.0)
	}
	
	// --- [ Operators: V ?= V ] ------
	func testCGPoint_Operators_AddAsg() {
		var temp = left
		temp += right
		
		let expected = CGTarget(a: 7.0, b: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_SubAsg() {
		var temp = left
		temp -= right
		
		let expected = CGTarget(a: 1.0, b: 3.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_AddSubAsg() {
		var temp = left
		temp +-= right
		
		let expected = CGTarget(a: 7.0, b: 3.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_SubAddAsg() {
		var temp = left
		temp -+= right
		
		let expected = CGTarget(a: 1.0, b: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_MulAsg() {
		var temp = left
		temp *= right
		
		let expected = CGTarget(a: 12.0, b: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_DevAsg() {
		var temp = left
		temp /= right
		
		let expected = CGTarget(a: 4.0 / 3.0, b: 2.5)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Operators: V ?= C ] ------
	func testCGPoint_Operators_AddConstAsg() {
		var temp = left
		temp += 3.0
		
		let expected = CGTarget(a: 7.0, b: 8.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_SubConstAsg() {
		var temp = left
		temp -= 3.0
		
		let expected = CGTarget(a: 1.0, b: 2.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_AddSubConstAsg() {
		var temp = left
		temp +-= 3.0
		
		let expected = CGTarget(a: 7.0, b: 2.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_SubAddConstAsg() {
		var temp = left
		temp -+= 3.0
		
		let expected = CGTarget(a: 1.0, b: 8.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_MulConstAsg() {
		var temp = left
		temp *= 3.0
		
		let expected = CGTarget(a: 12.0, b: 15.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testCGPoint_Operators_DevConstAsg() {
		var temp = left
		temp /= 3.0
		
		let expected = CGTarget(a: 4.0 / 3.0, b: 5.0 / 3.0)
		XCTAssertEqual(expected, temp)
	}
}
