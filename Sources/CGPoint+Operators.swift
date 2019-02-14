import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGPoint
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGPoint
#endif

infix operator +-: AdditionPrecedence
infix operator -+: AdditionPrecedence
infix operator +-=: AssignmentPrecedence
infix operator -+=: AssignmentPrecedence

extension CGPoint {
	// ? V
	prefix public static func - (rhs: CGPoint) -> CGPoint {
		return CGPoint(simd: -rhs.simd)
	}
	
	// V ? V
	public static func + (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
		return CGPoint(simd: lhs.simd + rhs.simd)
	}
	
	public static func - (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
		return CGPoint(simd: lhs.simd - rhs.simd)
	}
	
	public static func +- (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
		return CGPoint(x: lhs.x + rhs.x, y: lhs.y - rhs.y)
	}
	
	public static func -+ (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
		return CGPoint(x: lhs.x - rhs.x, y: lhs.y + rhs.y)
	}
	
	public static func * (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
		return CGPoint(simd: lhs.simd * rhs.simd)
	}
	
	public static func / (lhs: CGPoint, rhs: CGPoint) -> CGPoint {
		return CGPoint(simd: lhs.simd / rhs.simd)
	}
	
	// C ? V
	public static func + (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
		return CGPoint(simd: SimdType(lhs.native) + rhs.simd)
	}
	
	public static func - (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
		return CGPoint(simd: SimdType(lhs.native) - rhs.simd)
	}
	
	public static func +- (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
		return CGPoint(x: lhs + rhs.x, y: lhs - rhs.y)
	}
	
	public static func -+ (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
		return CGPoint(x: lhs - rhs.x, y: lhs + rhs.y)
	}
	
	public static func * (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
		return CGPoint(simd: lhs.native * rhs.simd)
	}
	
	public static func / (lhs: CGFloat, rhs: CGPoint) -> CGPoint {
		return CGPoint(simd: SimdType(lhs.native) / rhs.simd)
	}
	
	// V ? C
	public static func + (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
		return CGPoint(simd: lhs.simd + SimdType(rhs.native))
	}
	
	public static func - (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
		return CGPoint(simd: lhs.simd - SimdType(rhs.native))
	}
	
	public static func +- (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
		return CGPoint(x: lhs.x + rhs, y: lhs.y - rhs)
	}
	
	public static func -+ (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
		return CGPoint(x: lhs.x - rhs, y: lhs.y + rhs)
	}
	
	public static func * (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
		return CGPoint(simd: lhs.simd * rhs.native)
	}
	
	public static func / (lhs: CGPoint, rhs: CGFloat) -> CGPoint {
		return CGPoint(simd: lhs.simd / rhs.native)
	}
	
	// V ?= V
	public static func += (lhs: inout CGPoint, rhs: CGPoint) {
		lhs = CGPoint(simd: lhs.simd + rhs.simd)
	}
	
	public static func -= (lhs: inout CGPoint, rhs: CGPoint) {
		lhs = CGPoint(simd: lhs.simd - rhs.simd)
	}
	
	public static func +-= (lhs: inout CGPoint, rhs: CGPoint) {
		lhs = CGPoint(x: lhs.x + rhs.x, y: lhs.y - rhs.y)
	}
	
	public static func -+= (lhs: inout CGPoint, rhs: CGPoint) {
		lhs = CGPoint(x: lhs.x - rhs.x, y: lhs.y + rhs.y)
	}
	
	public static func *= (lhs: inout CGPoint, rhs: CGPoint) {
		lhs = CGPoint(simd: lhs.simd * rhs.simd)
	}
	
	public static func /= (lhs: inout CGPoint, rhs: CGPoint) {
		lhs = CGPoint(simd: lhs.simd / rhs.simd)
	}
	
	// V ?= C
	public static func += (lhs: inout CGPoint, rhs: CGFloat) {
		lhs = CGPoint(simd: lhs.simd + SimdType(rhs.native))
	}
	
	public static func -= (lhs: inout CGPoint, rhs: CGFloat) {
		lhs = CGPoint(simd: lhs.simd - SimdType(rhs.native))
	}
	
	public static func +-= (lhs: inout CGPoint, rhs: CGFloat) {
		lhs = CGPoint(x: lhs.x + rhs, y: lhs.y - rhs)
	}
	
	public static func -+= (lhs: inout CGPoint, rhs: CGFloat) {
		lhs = CGPoint(x: lhs.x - rhs, y: lhs.y + rhs)
	}
	
	public static func *= (lhs: inout CGPoint, rhs: CGFloat) {
		lhs = CGPoint(simd: lhs.simd * rhs.native)
	}
	
	public static func /= (lhs: inout CGPoint, rhs: CGFloat) {
		lhs = CGPoint(simd: lhs.simd / rhs.native)
	}
}
