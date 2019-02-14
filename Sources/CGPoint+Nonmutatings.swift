import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGPoint
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGPoint
#endif

extension CGPoint {
	public func adding(x: CGFloat) -> CGPoint {
		return CGPoint(x: self.x + x, y: self.y)
	}
	
	public func adding(y: CGFloat) -> CGPoint {
		return CGPoint(x: self.x, y: self.y + y)
	}
	
	public func adding(x: CGFloat, y: CGFloat) -> CGPoint {
		return CGPoint(simd: self.simd + SimdType(x.native, y.native))
	}
	
	public func adding(offset: CGFloat) -> CGPoint {
		return CGPoint(simd: self.simd + SimdType(offset.native, offset.native))
	}
	
	
	public func setting(x: CGFloat) -> CGPoint {
		return CGPoint(x: x, y: self.y)
	}
	
	public func setting(y: CGFloat) -> CGPoint {
		return CGPoint(x: self.x, y: y)
	}
}
