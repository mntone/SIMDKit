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
	#if arch(arm64) || arch(x86_64)
	internal typealias SimdType = simd_double2
	#else
	internal typealias SimdType = simd_float2
	#endif
	
	internal init(simd: SimdType) {
		self.init(x: CGFloat(simd.x), y: CGFloat(simd.y))
	}
	
	internal var simd: SimdType {
		return SimdType(x: self.x.native, y: self.y.native)
	}
}
