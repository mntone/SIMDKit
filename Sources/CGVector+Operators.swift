import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGVector
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGVector
#endif

infix operator +-: AdditionPrecedence
infix operator -+: AdditionPrecedence
infix operator +-=: AssignmentPrecedence
infix operator -+=: AssignmentPrecedence

extension CGVector {
	// ? V
	prefix public static func - (rhs: CGVector) -> CGVector {
		return CGVector(simd: -rhs.simd)
	}
	
	// V ? V
	public static func + (lhs: CGVector, rhs: CGVector) -> CGVector {
		return CGVector(simd: lhs.simd + rhs.simd)
	}
	
	public static func - (lhs: CGVector, rhs: CGVector) -> CGVector {
		return CGVector(simd: lhs.simd - rhs.simd)
	}
	
	public static func +- (lhs: CGVector, rhs: CGVector) -> CGVector {
		return CGVector(dx: lhs.dx + rhs.dx, dy: lhs.dy - rhs.dy)
	}
	
	public static func -+ (lhs: CGVector, rhs: CGVector) -> CGVector {
		return CGVector(dx: lhs.dx - rhs.dx, dy: lhs.dy + rhs.dy)
	}
	
	public static func * (lhs: CGVector, rhs: CGVector) -> CGVector {
		return CGVector(simd: lhs.simd * rhs.simd)
	}
	
	public static func / (lhs: CGVector, rhs: CGVector) -> CGVector {
		return CGVector(simd: lhs.simd / rhs.simd)
	}
	
	// C ? V
	public static func + (lhs: CGFloat, rhs: CGVector) -> CGVector {
		return CGVector(simd: SimdType(repeating: lhs.native) + rhs.simd)
	}
	
	public static func - (lhs: CGFloat, rhs: CGVector) -> CGVector {
		return CGVector(simd: SimdType(repeating: lhs.native) - rhs.simd)
	}
	
	public static func +- (lhs: CGFloat, rhs: CGVector) -> CGVector {
		return CGVector(dx: lhs + rhs.dx, dy: lhs - rhs.dy)
	}
	
	public static func -+ (lhs: CGFloat, rhs: CGVector) -> CGVector {
		return CGVector(dx: lhs - rhs.dx, dy: lhs + rhs.dy)
	}
	
	public static func * (lhs: CGFloat, rhs: CGVector) -> CGVector {
		return CGVector(simd: lhs.native * rhs.simd)
	}
	
	public static func / (lhs: CGFloat, rhs: CGVector) -> CGVector {
		return CGVector(simd: SimdType(repeating: lhs.native) / rhs.simd)
	}
	
	// V ? C
	public static func + (lhs: CGVector, rhs: CGFloat) -> CGVector {
		return CGVector(simd: lhs.simd + SimdType(repeating: rhs.native))
	}
	
	public static func - (lhs: CGVector, rhs: CGFloat) -> CGVector {
		return CGVector(simd: lhs.simd - SimdType(repeating: rhs.native))
	}
	
	public static func +- (lhs: CGVector, rhs: CGFloat) -> CGVector {
		return CGVector(dx: lhs.dx + rhs, dy: lhs.dy - rhs)
	}
	
	public static func -+ (lhs: CGVector, rhs: CGFloat) -> CGVector {
		return CGVector(dx: lhs.dx - rhs, dy: lhs.dy + rhs)
	}
	
	public static func * (lhs: CGVector, rhs: CGFloat) -> CGVector {
		return CGVector(simd: lhs.simd * rhs.native)
	}
	
	public static func / (lhs: CGVector, rhs: CGFloat) -> CGVector {
		return CGVector(simd: lhs.simd / rhs.native)
	}
	
	// V ?= V
	public static func += (lhs: inout CGVector, rhs: CGVector) {
		lhs = CGVector(simd: lhs.simd + rhs.simd)
	}
	
	public static func -= (lhs: inout CGVector, rhs: CGVector) {
		lhs = CGVector(simd: lhs.simd - rhs.simd)
	}
	
	public static func +-= (lhs: inout CGVector, rhs: CGVector) {
		lhs = CGVector(dx: lhs.dx + rhs.dx, dy: lhs.dy - rhs.dy)
	}
	
	public static func -+= (lhs: inout CGVector, rhs: CGVector) {
		lhs = CGVector(dx: lhs.dx - rhs.dx, dy: lhs.dy + rhs.dy)
	}
	
	public static func *= (lhs: inout CGVector, rhs: CGVector) {
		lhs = CGVector(simd: lhs.simd * rhs.simd)
	}
	
	public static func /= (lhs: inout CGVector, rhs: CGVector) {
		lhs = CGVector(simd: lhs.simd / rhs.simd)
	}
	
	// V ?= C
	public static func += (lhs: inout CGVector, rhs: CGFloat) {
		lhs = CGVector(simd: lhs.simd + SimdType(repeating: rhs.native))
	}
	
	public static func -= (lhs: inout CGVector, rhs: CGFloat) {
		lhs = CGVector(simd: lhs.simd - SimdType(repeating: rhs.native))
	}
	
	public static func +-= (lhs: inout CGVector, rhs: CGFloat) {
		lhs = CGVector(dx: lhs.dx + rhs, dy: lhs.dy - rhs)
	}
	
	public static func -+= (lhs: inout CGVector, rhs: CGFloat) {
		lhs = CGVector(dx: lhs.dx - rhs, dy: lhs.dy + rhs)
	}
	
	public static func *= (lhs: inout CGVector, rhs: CGFloat) {
		lhs = CGVector(simd: lhs.simd * rhs.native)
	}
	
	public static func /= (lhs: inout CGVector, rhs: CGFloat) {
		lhs = CGVector(simd: lhs.simd / rhs.native)
	}
}
