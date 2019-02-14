import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGVector
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGVector
#endif

infix operator +-: AdditionPrecedence
infix operator -+: AdditionPrecedence
infix operator +-=: AssignmentPrecedence
infix operator -+=: AssignmentPrecedence

extension CGVector {
	#if arch(arm64) || arch(x86_64)
	internal typealias SimdType = simd_double2
	#else
	internal typealias SimdType = simd_float2
	#endif
	
	internal init(simd: SimdType) {
		self.init(dx: CGFloat(simd.x), dy: CGFloat(simd.y))
	}
	
	internal var simd: SimdType {
		return SimdType(x: self.dx.native, y: self.dy.native)
	}
}
