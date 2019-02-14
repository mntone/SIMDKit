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
	#if arch(arm64) || arch(x86_64)
	internal typealias SimdType = simd_double2
	#else
	internal typealias SimdType = simd_float2
	#endif
	
	internal init(simd: SimdType) {
		self.init(width: CGFloat(simd.x), height: CGFloat(simd.y))
	}
	
	internal var simd: SimdType {
		return SimdType(x: self.width.native, y: self.height.native)
	}
}
