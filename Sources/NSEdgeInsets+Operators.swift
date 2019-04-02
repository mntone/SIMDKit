import simd
import struct AppKit.NSEdgeInsets
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGRect

extension NSEdgeInsets {
	// ? V
	prefix public static func - (rhs: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(simd: -rhs.simd)
	}
	
	// V ? V
	public static func + (lhs: NSEdgeInsets, rhs: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(simd: lhs.simd + rhs.simd)
	}
	
	public static func - (lhs: NSEdgeInsets, rhs: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(simd: lhs.simd - rhs.simd)
	}
	
	public static func * (lhs: NSEdgeInsets, rhs: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(simd: lhs.simd * rhs.simd)
	}
	
	public static func / (lhs: NSEdgeInsets, rhs: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(simd: lhs.simd / rhs.simd)
	}
	
	// C ? V
	public static func + (lhs: CGFloat, rhs: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(simd: SimdType(repeating: lhs.native) + rhs.simd)
	}
	
	public static func - (lhs: CGFloat, rhs: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(simd: SimdType(repeating: lhs.native) - rhs.simd)
	}
	
	public static func * (lhs: CGFloat, rhs: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(simd: lhs.native * rhs.simd)
	}
	
	public static func / (lhs: CGFloat, rhs: NSEdgeInsets) -> NSEdgeInsets {
		return NSEdgeInsets(simd: SimdType(repeating: lhs.native) / rhs.simd)
	}
	
	// V ? C
	public static func + (lhs: NSEdgeInsets, rhs: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(simd: lhs.simd + SimdType(repeating: rhs.native))
	}
	
	public static func - (lhs: NSEdgeInsets, rhs: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(simd: lhs.simd - SimdType(repeating: rhs.native))
	}
	
	public static func * (lhs: NSEdgeInsets, rhs: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(simd: lhs.simd * rhs.native)
	}
	
	public static func / (lhs: NSEdgeInsets, rhs: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(simd: lhs.simd / rhs.native)
	}
	
	// V ?= V
	public static func += (lhs: inout NSEdgeInsets, rhs: NSEdgeInsets) {
		lhs = NSEdgeInsets(simd: lhs.simd + rhs.simd)
	}
	
	public static func -= (lhs: inout NSEdgeInsets, rhs: NSEdgeInsets) {
		lhs = NSEdgeInsets(simd: lhs.simd - rhs.simd)
	}
	
	public static func *= (lhs: inout NSEdgeInsets, rhs: NSEdgeInsets) {
		lhs = NSEdgeInsets(simd: lhs.simd * rhs.simd)
	}
	
	public static func /= (lhs: inout NSEdgeInsets, rhs: NSEdgeInsets) {
		lhs = NSEdgeInsets(simd: lhs.simd / rhs.simd)
	}
	
	// V ?= C
	public static func += (lhs: inout NSEdgeInsets, rhs: CGFloat) {
		lhs = NSEdgeInsets(simd: lhs.simd + SimdType(repeating: rhs.native))
	}
	
	public static func -= (lhs: inout NSEdgeInsets, rhs: CGFloat) {
		lhs = NSEdgeInsets(simd: lhs.simd - SimdType(repeating: rhs.native))
	}
	
	public static func *= (lhs: inout NSEdgeInsets, rhs: CGFloat) {
		lhs = NSEdgeInsets(simd: lhs.simd * rhs.native)
	}
	
	public static func /= (lhs: inout NSEdgeInsets, rhs: CGFloat) {
		lhs = NSEdgeInsets(simd: lhs.simd / rhs.native)
	}
}
