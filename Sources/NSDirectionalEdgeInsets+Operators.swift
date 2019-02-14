import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGRect
import simd
import struct UIKit.NSDirectionalEdgeInsets

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets {
	// ? V
	prefix public static func - (rhs: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: -rhs.simd)
	}
	
	// V ? V
	public static func + (lhs: NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: lhs.simd + rhs.simd)
	}
	
	public static func - (lhs: NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: lhs.simd - rhs.simd)
	}
	
	public static func * (lhs: NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: lhs.simd * rhs.simd)
	}
	
	public static func / (lhs: NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: lhs.simd / rhs.simd)
	}
	
	// C ? V
	public static func + (lhs: CGFloat, rhs: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: SimdType(lhs.native) + rhs.simd)
	}
	
	public static func - (lhs: CGFloat, rhs: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: SimdType(lhs.native) - rhs.simd)
	}
	
	public static func * (lhs: CGFloat, rhs: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: lhs.native * rhs.simd)
	}
	
	public static func / (lhs: CGFloat, rhs: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: SimdType(lhs.native) / rhs.simd)
	}
	
	// V ? C
	public static func + (lhs: NSDirectionalEdgeInsets, rhs: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: lhs.simd + SimdType(rhs.native))
	}
	
	public static func - (lhs: NSDirectionalEdgeInsets, rhs: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: lhs.simd - SimdType(rhs.native))
	}
	
	public static func * (lhs: NSDirectionalEdgeInsets, rhs: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: lhs.simd * rhs.native)
	}
	
	public static func / (lhs: NSDirectionalEdgeInsets, rhs: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(simd: lhs.simd / rhs.native)
	}
	
	// V ?= V
	public static func += (lhs: inout NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) {
		lhs = NSDirectionalEdgeInsets(simd: lhs.simd + rhs.simd)
	}
	
	public static func -= (lhs: inout NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) {
		lhs = NSDirectionalEdgeInsets(simd: lhs.simd - rhs.simd)
	}
	
	public static func *= (lhs: inout NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) {
		lhs = NSDirectionalEdgeInsets(simd: lhs.simd * rhs.simd)
	}
	
	public static func /= (lhs: inout NSDirectionalEdgeInsets, rhs: NSDirectionalEdgeInsets) {
		lhs = NSDirectionalEdgeInsets(simd: lhs.simd / rhs.simd)
	}
	
	// V ?= C
	public static func += (lhs: inout NSDirectionalEdgeInsets, rhs: CGFloat) {
		lhs = NSDirectionalEdgeInsets(simd: lhs.simd + SimdType(rhs.native))
	}
	
	public static func -= (lhs: inout NSDirectionalEdgeInsets, rhs: CGFloat) {
		lhs = NSDirectionalEdgeInsets(simd: lhs.simd - SimdType(rhs.native))
	}
	
	public static func *= (lhs: inout NSDirectionalEdgeInsets, rhs: CGFloat) {
		lhs = NSDirectionalEdgeInsets(simd: lhs.simd * rhs.native)
	}
	
	public static func /= (lhs: inout NSDirectionalEdgeInsets, rhs: CGFloat) {
		lhs = NSDirectionalEdgeInsets(simd: lhs.simd / rhs.native)
	}
}
