import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGSize
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGSize
#endif

infix operator +-: AdditionPrecedence
infix operator -+: AdditionPrecedence
infix operator +-=: AssignmentPrecedence
infix operator -+=: AssignmentPrecedence

extension CGSize {
	// ? V
	prefix public static func - (rhs: CGSize) -> CGSize {
		return CGSize(simd: -rhs.simd)
	}
	
	// V ? V
	public static func + (lhs: CGSize, rhs: CGSize) -> CGSize {
		return CGSize(simd: lhs.simd + rhs.simd)
	}
	
	public static func - (lhs: CGSize, rhs: CGSize) -> CGSize {
		return CGSize(simd: lhs.simd - rhs.simd)
	}
	
	public static func +- (lhs: CGSize, rhs: CGSize) -> CGSize {
		return CGSize(width: lhs.width + rhs.width, height: lhs.height - rhs.height)
	}
	
	public static func -+ (lhs: CGSize, rhs: CGSize) -> CGSize {
		return CGSize(width: lhs.width - rhs.width, height: lhs.height + rhs.height)
	}
	
	public static func * (lhs: CGSize, rhs: CGSize) -> CGSize {
		return CGSize(simd: lhs.simd * rhs.simd)
	}
	
	public static func / (lhs: CGSize, rhs: CGSize) -> CGSize {
		return CGSize(simd: lhs.simd / rhs.simd)
	}
	
	// C ? V
	public static func + (lhs: CGFloat, rhs: CGSize) -> CGSize {
		return CGSize(simd: SimdType(repeating: lhs.native) + rhs.simd)
	}
	
	public static func - (lhs: CGFloat, rhs: CGSize) -> CGSize {
		return CGSize(simd: SimdType(repeating: lhs.native) - rhs.simd)
	}
	
	public static func +- (lhs: CGFloat, rhs: CGSize) -> CGSize {
		return CGSize(width: lhs + rhs.width, height: lhs - rhs.height)
	}
	
	public static func -+ (lhs: CGFloat, rhs: CGSize) -> CGSize {
		return CGSize(width: lhs - rhs.width, height: lhs + rhs.height)
	}
	
	public static func * (lhs: CGFloat, rhs: CGSize) -> CGSize {
		return CGSize(simd: lhs.native * rhs.simd)
	}
	
	public static func / (lhs: CGFloat, rhs: CGSize) -> CGSize {
		return CGSize(simd: SimdType(repeating: lhs.native) / rhs.simd)
	}
	
	// V ? C
	public static func + (lhs: CGSize, rhs: CGFloat) -> CGSize {
		return CGSize(simd: lhs.simd + SimdType(repeating: rhs.native))
	}
	
	public static func - (lhs: CGSize, rhs: CGFloat) -> CGSize {
		return CGSize(simd: lhs.simd - SimdType(repeating: rhs.native))
	}
	
	public static func +- (lhs: CGSize, rhs: CGFloat) -> CGSize {
		return CGSize(width: lhs.width + rhs, height: lhs.height - rhs)
	}
	
	public static func -+ (lhs: CGSize, rhs: CGFloat) -> CGSize {
		return CGSize(width: lhs.width - rhs, height: lhs.height + rhs)
	}
	
	public static func * (lhs: CGSize, rhs: CGFloat) -> CGSize {
		return CGSize(simd: lhs.simd * rhs.native)
	}
	
	public static func / (lhs: CGSize, rhs: CGFloat) -> CGSize {
		return CGSize(simd: lhs.simd / rhs.native)
	}
	
	// V ?= V
	public static func += (lhs: inout CGSize, rhs: CGSize) {
		lhs = CGSize(simd: lhs.simd + rhs.simd)
	}
	
	public static func -= (lhs: inout CGSize, rhs: CGSize) {
		lhs = CGSize(simd: lhs.simd - rhs.simd)
	}
	
	public static func +-= (lhs: inout CGSize, rhs: CGSize) {
		lhs = CGSize(width: lhs.width + rhs.width, height: lhs.height - rhs.height)
	}
	
	public static func -+= (lhs: inout CGSize, rhs: CGSize) {
		lhs = CGSize(width: lhs.width - rhs.width, height: lhs.height + rhs.height)
	}
	
	public static func *= (lhs: inout CGSize, rhs: CGSize) {
		lhs = CGSize(simd: lhs.simd * rhs.simd)
	}
	
	public static func /= (lhs: inout CGSize, rhs: CGSize) {
		lhs = CGSize(simd: lhs.simd / rhs.simd)
	}
	
	// V ?= C
	public static func += (lhs: inout CGSize, rhs: CGFloat) {
		lhs = CGSize(simd: lhs.simd + SimdType(repeating: rhs.native))
	}
	
	public static func -= (lhs: inout CGSize, rhs: CGFloat) {
		lhs = CGSize(simd: lhs.simd - SimdType(repeating: rhs.native))
	}
	
	public static func +-= (lhs: inout CGSize, rhs: CGFloat) {
		lhs = CGSize(width: lhs.width + rhs, height: lhs.height - rhs)
	}
	
	public static func -+= (lhs: inout CGSize, rhs: CGFloat) {
		lhs = CGSize(width: lhs.width - rhs, height: lhs.height + rhs)
	}
	
	public static func *= (lhs: inout CGSize, rhs: CGFloat) {
		lhs = CGSize(simd: lhs.simd * rhs.native)
	}
	
	public static func /= (lhs: inout CGSize, rhs: CGFloat) {
		lhs = CGSize(simd: lhs.simd / rhs.native)
	}
}
