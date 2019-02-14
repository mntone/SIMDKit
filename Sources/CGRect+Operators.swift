import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGRect
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGRect
#endif

extension CGRect {
	// ? V
	prefix public static func - (rhs: CGRect) -> CGRect {
		return CGRect(simd: -rhs.simd)
	}
	
	// V ? V
	public static func + (lhs: CGRect, rhs: CGRect) -> CGRect {
		return CGRect(simd: lhs.simd + rhs.simd)
	}
	
	public static func - (lhs: CGRect, rhs: CGRect) -> CGRect {
		return CGRect(simd: lhs.simd - rhs.simd)
	}
	
	public static func * (lhs: CGRect, rhs: CGRect) -> CGRect {
		return CGRect(simd: lhs.simd * rhs.simd)
	}
	
	public static func / (lhs: CGRect, rhs: CGRect) -> CGRect {
		return CGRect(simd: lhs.simd / rhs.simd)
	}
	
	// C ? V
	public static func + (lhs: CGFloat, rhs: CGRect) -> CGRect {
		return CGRect(simd: SimdType(lhs.native) + rhs.simd)
	}
	
	public static func - (lhs: CGFloat, rhs: CGRect) -> CGRect {
		return CGRect(simd: SimdType(lhs.native) - rhs.simd)
	}
	
	public static func * (lhs: CGFloat, rhs: CGRect) -> CGRect {
		return CGRect(simd: lhs.native * rhs.simd)
	}
	
	public static func / (lhs: CGFloat, rhs: CGRect) -> CGRect {
		return CGRect(simd: SimdType(lhs.native) / rhs.simd)
	}
	
	// V ? C
	public static func + (lhs: CGRect, rhs: CGFloat) -> CGRect {
		return CGRect(simd: lhs.simd + SimdType(rhs.native))
	}
	
	public static func - (lhs: CGRect, rhs: CGFloat) -> CGRect {
		return CGRect(simd: lhs.simd - SimdType(rhs.native))
	}
	
	public static func * (lhs: CGRect, rhs: CGFloat) -> CGRect {
		return CGRect(simd: lhs.simd * rhs.native)
	}
	
	public static func / (lhs: CGRect, rhs: CGFloat) -> CGRect {
		return CGRect(simd: lhs.simd / rhs.native)
	}
	
	// V ?= V
	public static func += (lhs: inout CGRect, rhs: CGRect) {
		lhs = CGRect(simd: lhs.simd + rhs.simd)
	}
	
	public static func -= (lhs: inout CGRect, rhs: CGRect) {
		lhs = CGRect(simd: lhs.simd - rhs.simd)
	}
	
	public static func *= (lhs: inout CGRect, rhs: CGRect) {
		lhs = CGRect(simd: lhs.simd * rhs.simd)
	}
	
	public static func /= (lhs: inout CGRect, rhs: CGRect) {
		lhs = CGRect(simd: lhs.simd / rhs.simd)
	}
	
	// V ?= C
	public static func += (lhs: inout CGRect, rhs: CGFloat) {
		lhs = CGRect(simd: lhs.simd + SimdType(rhs.native))
	}

	public static func -= (lhs: inout CGRect, rhs: CGFloat) {
		lhs = CGRect(simd: lhs.simd - SimdType(rhs.native))
	}
	
	public static func *= (lhs: inout CGRect, rhs: CGFloat) {
		lhs = CGRect(simd: lhs.simd * rhs.native)
	}
	
	public static func /= (lhs: inout CGRect, rhs: CGFloat) {
		lhs = CGRect(simd: lhs.simd / rhs.native)
	}
}
