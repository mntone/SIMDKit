import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGPoint
import struct CoreGraphics.CGGeometry.CGRect
import struct CoreGraphics.CGGeometry.CGSize
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGPoint
import struct CoreGraphics.CGRect
import struct CoreGraphics.CGSize
#endif

extension CGRect {
	public mutating func add(x: CGFloat) {
		self.origin.x += x
	}
	
	public mutating func add(y: CGFloat) {
		self.origin.y += y
	}
	
	public mutating func add(x: CGFloat, y: CGFloat) {
		self.origin += CGPoint(x: x, y: y)
	}
	
	public mutating func add(offset: CGFloat) {
		self.origin += CGPoint(x: offset, y: offset)
	}
	
	public mutating func add(width: CGFloat) {
		self.size.width += width
	}
	
	public mutating func add(height: CGFloat) {
		self.size.height += height
	}
	
	public mutating func add(width: CGFloat, height: CGFloat) {
		self.size += CGSize(width: width, height: height)
	}
	
	public mutating func add(length: CGFloat) {
		self.size += CGSize(width: length, height: length)
	}
	
	public mutating func add(size: CGSize) {
		self.size += size
	}
}
