import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGSize
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGSize
#endif

extension CGSize {
	public func adding(width: CGFloat) -> CGSize {
		return CGSize(width: self.width + width, height: self.height)
	}
	
	public func adding(height: CGFloat) -> CGSize {
		return CGSize(width: self.width, height: self.height + height)
	}
	
	public func adding(width: CGFloat, height: CGFloat) -> CGSize {
		return CGSize(simd: self.simd + SimdType(width.native, height.native))
	}
	
	public func adding(length: CGFloat) -> CGSize {
		return CGSize(simd: self.simd + SimdType(length.native, length.native))
	}
	
	
	public func setting(width: CGFloat) -> CGSize {
		return CGSize(width: width, height: self.height)
	}
	
	public func setting(height: CGFloat) -> CGSize {
		return CGSize(width: self.width, height: height)
	}
}
