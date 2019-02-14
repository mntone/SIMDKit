import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGPoint
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGPoint
#endif

extension CGPoint {
	public mutating func add(x: CGFloat) {
		self.x += x
	}
	
	public mutating func add(y: CGFloat) {
		self.y += y
	}
	
	public mutating func add(x: CGFloat, y: CGFloat) {
		self = CGPoint(simd: self.simd + SimdType(x.native, y.native))
	}
	
	public mutating func add(offset: CGFloat) {
		self = CGPoint(simd: self.simd + SimdType(offset.native, offset.native))
	}
}
