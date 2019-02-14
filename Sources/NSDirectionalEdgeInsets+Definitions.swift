import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGRect
import simd
import struct UIKit.NSDirectionalEdgeInsets

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets {
	#if arch(arm64) || arch(arm64_32) || arch(x86_64)
	internal typealias SimdType = simd_double4
	#else
	internal typealias SimdType = simd_float4
	#endif
	
	internal init(simd: SimdType) {
		self.init(top: CGFloat(simd.x), leading: CGFloat(simd.y), bottom: CGFloat(simd.z), trailing: CGFloat(simd.w))
	}
	
	internal var simd: SimdType {
		return SimdType(x: top.native, y: leading.native, z: bottom.native, w: trailing.native)
	}
}
