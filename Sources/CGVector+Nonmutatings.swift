import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGVector
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGVector
#endif

extension CGVector {
	public func adding(dx: CGFloat) -> CGVector {
		return CGVector(dx: self.dx + dx, dy: self.dy)
	}
	
	public func adding(dy: CGFloat) -> CGVector {
		return CGVector(dx: self.dx, dy: self.dy + dy)
	}
	
	public func adding(dx: CGFloat, dy: CGFloat) -> CGVector {
		return CGVector(simd: self.simd + SimdType(dx.native, dy.native))
	}
	
	public func adding(delta: CGFloat) -> CGVector {
		return CGVector(simd: self.simd + SimdType(delta.native, delta.native))
	}
	
	
	public func setting(dx: CGFloat) -> CGVector {
		return CGVector(dx: dx, dy: self.dy)
	}
	
	public func setting(dy: CGFloat) -> CGVector {
		return CGVector(dx: self.dx, dy: dy)
	}
}
