import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGVector
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGVector
#endif

extension CGVector {
	public mutating func add(dx: CGFloat) {
		self.dx += dx
	}
	
	public mutating func add(dy: CGFloat) {
		self.dy += dy
	}
	
	public mutating func add(dx: CGFloat, dy: CGFloat) {
		self = CGVector(simd: self.simd + SimdType(dx.native, dy.native))
	}
	
	public mutating func add(delta: CGFloat) {
		self = CGVector(simd: self.simd + SimdType(delta.native, delta.native))
	}
}
