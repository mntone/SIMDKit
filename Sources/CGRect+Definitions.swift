import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGRect
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGRect
#endif

extension CGRect {
	#if arch(arm64) || arch(x86_64)
	internal typealias SimdType = simd_double4
	#else
	internal typealias SimdType = simd_float4
	#endif
	
	internal init(simd: SimdType) {
		self.init(x: CGFloat(simd.x), y: CGFloat(simd.y), width: CGFloat(simd.z), height: CGFloat(simd.w))
	}
	
	internal var simd: SimdType {
		return SimdType(x: self.origin.x.native, y: self.origin.y.native, z: self.size.width.native, w: self.size.height.native)
	}
}
