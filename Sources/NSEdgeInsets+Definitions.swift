import simd
import struct AppKit.NSEdgeInsets
import struct CoreGraphics.CGGeometry.CGFloat

extension NSEdgeInsets {
	#if arch(arm64) || arch(x86_64)
	internal typealias SimdType = simd_double4
	#else
	internal typealias SimdType = simd_float4
	#endif
	
	internal init(simd: SimdType) {
		self.init(top: CGFloat(simd.x), left: CGFloat(simd.y), bottom: CGFloat(simd.z), right: CGFloat(simd.w))
	}
	
	internal var simd: SimdType {
		return SimdType(x: top.native, y: left.native, z: bottom.native, w: right.native)
	}
	
	public init(vertical: CGFloat, horizontal: CGFloat) {
		self.init(top: vertical, left: horizontal, bottom: vertical, right: horizontal)
	}
}
