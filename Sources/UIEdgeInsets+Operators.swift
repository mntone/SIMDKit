import simd
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGRect
import struct UIKit.UIEdgeInsets

extension UIEdgeInsets {
	// ? V
	prefix public static func - (rhs: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(simd: -rhs.simd)
	}
	
	// V ? V
	public static func + (lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(simd: lhs.simd + rhs.simd)
	}
	
	public static func - (lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(simd: lhs.simd - rhs.simd)
	}
	
	public static func * (lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(simd: lhs.simd * rhs.simd)
	}
	
	public static func / (lhs: UIEdgeInsets, rhs: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(simd: lhs.simd / rhs.simd)
	}
	
	// C ? V
	public static func + (lhs: CGFloat, rhs: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(simd: SimdType(repeating: lhs.native) + rhs.simd)
	}
	
	public static func - (lhs: CGFloat, rhs: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(simd: SimdType(repeating: lhs.native) - rhs.simd)
	}
	
	public static func * (lhs: CGFloat, rhs: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(simd: lhs.native * rhs.simd)
	}
	
	public static func / (lhs: CGFloat, rhs: UIEdgeInsets) -> UIEdgeInsets {
		return UIEdgeInsets(simd: SimdType(repeating: lhs.native) / rhs.simd)
	}
	
	// V ? C
	public static func + (lhs: UIEdgeInsets, rhs: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(simd: lhs.simd + SimdType(repeating: rhs.native))
	}
	
	public static func - (lhs: UIEdgeInsets, rhs: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(simd: lhs.simd - SimdType(repeating: rhs.native))
	}
	
	public static func * (lhs: UIEdgeInsets, rhs: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(simd: lhs.simd * rhs.native)
	}
	
	public static func / (lhs: UIEdgeInsets, rhs: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(simd: lhs.simd / rhs.native)
	}
	
	// V ?= V
	public static func += (lhs: inout UIEdgeInsets, rhs: UIEdgeInsets) {
		lhs = UIEdgeInsets(simd: lhs.simd + rhs.simd)
	}
	
	public static func -= (lhs: inout UIEdgeInsets, rhs: UIEdgeInsets) {
		lhs = UIEdgeInsets(simd: lhs.simd - rhs.simd)
	}
	
	public static func *= (lhs: inout UIEdgeInsets, rhs: UIEdgeInsets) {
		lhs = UIEdgeInsets(simd: lhs.simd * rhs.simd)
	}
	
	public static func /= (lhs: inout UIEdgeInsets, rhs: UIEdgeInsets) {
		lhs = UIEdgeInsets(simd: lhs.simd / rhs.simd)
	}
	
	// V ?= C
	public static func += (lhs: inout UIEdgeInsets, rhs: CGFloat) {
		lhs = UIEdgeInsets(simd: lhs.simd + SimdType(repeating: rhs.native))
	}
	
	public static func -= (lhs: inout UIEdgeInsets, rhs: CGFloat) {
		lhs = UIEdgeInsets(simd: lhs.simd - SimdType(repeating: rhs.native))
	}
	
	public static func *= (lhs: inout UIEdgeInsets, rhs: CGFloat) {
		lhs = UIEdgeInsets(simd: lhs.simd * rhs.native)
	}
	
	public static func /= (lhs: inout UIEdgeInsets, rhs: CGFloat) {
		lhs = UIEdgeInsets(simd: lhs.simd / rhs.native)
	}
}
