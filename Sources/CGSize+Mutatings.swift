import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGSize
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGSize
#endif

extension CGSize {
	public mutating func add(width: CGFloat) {
		self.width += width
	}
	
	public mutating func add(height: CGFloat) {
		self.height += height
	}
	
	public mutating func add(width: CGFloat, height: CGFloat) {
		self = CGSize(simd: self.simd + SimdType(width.native, height.native))
	}
	
	public mutating func add(length: CGFloat) {
		self = CGSize(simd: self.simd + SimdType(length.native, length.native))
	}
}
