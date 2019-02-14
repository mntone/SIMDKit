import XCTest
@testable import SIMDKit

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
fileprivate typealias CGTarget = NSDirectionalEdgeInsets

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension CGTarget {
	fileprivate init(a: CGFloat, b: CGFloat, c: CGFloat, d: CGFloat) {
		self.init(top: a, leading: b, bottom: c, trailing: d)
	}
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
final class NSDirectionalEdgeInsetsTests: XCTestCase {
	private let left = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
	private let right = CGTarget(a: 3.0, b: 2.0, c: 1.0, d: 0.0)
	
	// --- [ Functions ] ------
	func testNSDirectionalEdgeInsets_Functions_AbsPlusPlus() {
		let value = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_AbsPlusMinus() {
		let value = CGTarget(a: 4.0, b: -5.0, c: 6.0, d: -7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_AbsMinusPlus() {
		let value = CGTarget(a: -4.0, b: 5.0, c: -6.0, d: 7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_AbsMinusMinus() {
		let value = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, abs(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_Ceil() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 5.0, b: 6.0, c: 7.0, d: 8.0)
		XCTAssertEqual(expected, ceil(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_CeilMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, ceil(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_Floor() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, floor(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_FloorMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -5.0, b: -6.0, c: -7.0, d: -8.0)
		XCTAssertEqual(expected, floor(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_Round() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_RoundMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_Trunc() {
		let value = CGTarget(a: 4.5, b: 5.3, c: 6.7, d: 7.2)
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_TruncMinus() {
		let value = CGTarget(a: -4.5, b: -5.3, c: -6.7, d: -7.2)
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, trunc(value))
	}
	
	func testNSDirectionalEdgeInsets_Functions_Max() {
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, max(left, right))
	}
	
	func testNSDirectionalEdgeInsets_Functions_Min() {
		let expected = CGTarget(a: 3.0, b: 2.0, c: 1.0, d: 0.0)
		XCTAssertEqual(expected, min(left, right))
	}
	
	func testNSDirectionalEdgeInsets_Functions_ReduceMax() {
		let expected: CGFloat = 7.0
		XCTAssertEqual(expected, reduce_max(left))
	}
	
	func testNSDirectionalEdgeInsets_Functions_ReduceMin() {
		let expected: CGFloat = 4.0
		XCTAssertEqual(expected, reduce_min(left))
	}
	
	func testNSDirectionalEdgeInsets_Functions_Clamp() {
		let expected = CGTarget(a: 4.3, b: 5.0, c: 6.0, d: 6.7)
		XCTAssertEqual(expected, clamp(left, min: 4.3, max: 6.7))
	}
	
	// --- [ Mutatings ] ------
	func testNSDirectionalEdgeInsets_Mutatings_AddTop() {
		var temp = left
		temp.add(top: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Mutatings_AddLeading() {
		var temp = left
		temp.add(leading: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Mutatings_AddBottom() {
		var temp = left
		temp.add(bottom: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 9.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Mutatings_AddTrailing() {
		var temp = left
		temp.add(trailing: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Mutatings_AddVertical() {
		var temp = left
		temp.add(vertical: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 5.0, c: 9.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Mutatings_AddHorizontal() {
		var temp = left
		temp.add(horizontal: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Mutatings_AddAll() {
		var temp = left
		temp.add(all: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Nonmutatings ] ------
	func testNSDirectionalEdgeInsets_Nonmutatings_AddingTop() {
		let temp = left.adding(top: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_AddingLeading() {
		let temp = left.adding(leading: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_AddingBottom() {
		let temp = left.adding(bottom: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 9.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_AddingTrailing() {
		let temp = left.adding(trailing: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_AddingVertical() {
		let temp = left.adding(vertical: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 5.0, c: 9.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_AddingHorizontal() {
		let temp = left.adding(horizontal: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 8.0, c: 6.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_AddingAll() {
		let temp = left.adding(all: 3.0)
		
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_SettingTop() {
		let temp = left.setting(top: 3.0)
		
		let expected = CGTarget(a: 3.0, b: 5.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_SettingLeading() {
		let temp = left.setting(leading: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 3.0, c: 6.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_SettingBottom() {
		let temp = left.setting(bottom: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 3.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_SettingTrailing() {
		let temp = left.setting(trailing: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 5.0, c: 6.0, d: 3.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_SettingVertical() {
		let temp = left.setting(vertical: 3.0)
		
		let expected = CGTarget(a: 3.0, b: 5.0, c: 3.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Nonmutatings_SettingHorizontal() {
		let temp = left.setting(horizontal: 3.0)
		
		let expected = CGTarget(a: 4.0, b: 3.0, c: 6.0, d: 3.0)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Operators: ?V ] ------
	func testNSDirectionalEdgeInsets_Operators_Negative() {
		let expected = CGTarget(a: -4.0, b: -5.0, c: -6.0, d: -7.0)
		XCTAssertEqual(expected, -left)
	}
	
	// --- [ Operators: V ? V ] ------
	func testNSDirectionalEdgeInsets_Operators_Add() {
		let expected = CGTarget(a: 7.0, b: 7.0, c: 7.0, d: 7.0)
		XCTAssertEqual(expected, left + right)
	}
	
	func testNSDirectionalEdgeInsets_Operators_Sub() {
		let expected = CGTarget(a: 1.0, b: 3.0, c: 5.0, d: 7.0)
		XCTAssertEqual(expected, left - right)
	}
	
	func testNSDirectionalEdgeInsets_Operators_Mul() {
		let expected = CGTarget(a: 12.0, b: 10.0, c: 6.0, d: 0.0)
		XCTAssertEqual(expected, left * right)
	}
	
	func testNSDirectionalEdgeInsets_Operators_Dev() {
		let expected = CGTarget(a: 4.0 / 3.0, b: 2.5, c: 6.0, d: CGFloat.infinity)
		XCTAssertEqual(expected, left / right)
	}
	
	// --- [ Operators: C ? V ] ------
	func testNSDirectionalEdgeInsets_Operators_AddLeftConst() {
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, 3.0 + left)
	}
	
	func testNSDirectionalEdgeInsets_Operators_SubLeftConst() {
		let expected = CGTarget(a: -1.0, b: -2.0, c: -3.0, d: -4.0)
		XCTAssertEqual(expected, 3.0 - left)
	}
	
	func testNSDirectionalEdgeInsets_Operators_MulLeftConst() {
		let expected = CGTarget(a: 12.0, b: 15.0, c: 18.0, d: 21.0)
		XCTAssertEqual(expected, 3.0 * left)
	}
	
	func testNSDirectionalEdgeInsets_Operators_DevLeftConst() {
		let expected = CGTarget(a: 3.0 / 4.0, b: 3.0 / 5.0, c: 0.5, d: 3.0 / 7.0)
		XCTAssertEqual(expected, 3.0 / left)
	}
	
	// --- [ Operators: V ? C ] ------
	func testNSDirectionalEdgeInsets_Operators_AddRightConst() {
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, left + 3.0)
	}
	
	func testNSDirectionalEdgeInsets_Operators_SubRightConst() {
		let expected = CGTarget(a: 1.0, b: 2.0, c: 3.0, d: 4.0)
		XCTAssertEqual(expected, left - 3.0)
	}
	
	func testNSDirectionalEdgeInsets_Operators_MulRightConst() {
		let expected = CGTarget(a: 12.0, b: 15.0, c: 18.0, d: 21.0)
		XCTAssertEqual(expected, left * 3.0)
	}
	
	func testNSDirectionalEdgeInsets_Operators_DevRightConst() {
		let expected = CGTarget(a: 4.0 / 3.0, b: 5.0 / 3.0, c: 2.0, d: 7.0 / 3.0)
		XCTAssertEqual(expected, left / 3.0)
	}
	
	// --- [ Operators: V ?= V ] ------
	func testNSDirectionalEdgeInsets_Operators_AddAsg() {
		var temp = left
		temp += right
		
		let expected = CGTarget(a: 7.0, b: 7.0, c: 7.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Operators_SubAsg() {
		var temp = left
		temp -= right
		
		let expected = CGTarget(a: 1.0, b: 3.0, c: 5.0, d: 7.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Operators_MulAsg() {
		var temp = left
		temp *= right
		
		let expected = CGTarget(a: 12.0, b: 10.0, c: 6.0, d: 0.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Operators_DevAsg() {
		var temp = left
		temp /= right
		
		let expected = CGTarget(a: 4.0 / 3.0, b: 2.5, c: 6.0, d: CGFloat.infinity)
		XCTAssertEqual(expected, temp)
	}
	
	// --- [ Operators: V ?= C ] ------
	func testNSDirectionalEdgeInsets_Operators_AddConstAsg() {
		var temp = left
		temp += 3.0
		
		let expected = CGTarget(a: 7.0, b: 8.0, c: 9.0, d: 10.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Operators_SubConstAsg() {
		var temp = left
		temp -= 3.0
		
		let expected = CGTarget(a: 1.0, b: 2.0, c: 3.0, d: 4.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Operators_MulConstAsg() {
		var temp = left
		temp *= 3.0
		
		let expected = CGTarget(a: 12.0, b: 15.0, c: 18.0, d: 21.0)
		XCTAssertEqual(expected, temp)
	}
	
	func testNSDirectionalEdgeInsets_Operators_DevConstAsg() {
		var temp = left
		temp /= 3.0
		
		let expected = CGTarget(a: 4.0 / 3.0, b: 5.0 / 3.0, c: 2.0, d: 7.0 / 3.0)
		XCTAssertEqual(expected, temp)
	}
}
