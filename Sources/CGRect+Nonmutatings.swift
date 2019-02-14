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
	public func adding(x: CGFloat) -> CGRect {
		return CGRect(x: self.origin.x + x, y: self.origin.y, width: self.size.width, height: self.size.height)
	}
	
	public func adding(y: CGFloat) -> CGRect {
		return CGRect(x: self.origin.x, y: self.origin.y + y, width: self.size.width, height: self.size.height)
	}
	
	public func adding(x: CGFloat, y: CGFloat) -> CGRect {
		return CGRect(origin: self.origin + CGPoint(x: x, y: y), size: self.size)
	}
	
	public func adding(offset: CGFloat) -> CGRect {
		return CGRect(origin: self.origin + offset, size: self.size)
	}
	
	public func adding(width: CGFloat) -> CGRect {
		return CGRect(x: self.origin.x, y: self.origin.y, width: self.size.width + width, height: self.size.height)
	}
	
	public func adding(height: CGFloat) -> CGRect {
		return CGRect(x: self.origin.x, y: self.origin.y, width: self.size.width, height: self.size.height + height)
	}
	
	public func adding(width: CGFloat, height: CGFloat) -> CGRect {
		return CGRect(origin: self.origin, size: self.size + CGSize(width: width, height: height))
	}
	
	public func adding(length: CGFloat) -> CGRect {
		return CGRect(origin: self.origin, size: self.size + length)
	}
	
	public func adding(size: CGSize) -> CGRect {
		return CGRect(origin: self.origin, size: self.size + size)
	}
	
	
	public func setting(x: CGFloat) -> CGRect {
		return CGRect(x: x, y: self.origin.y, width: self.size.width, height: self.size.height)
	}
	
	public func setting(y: CGFloat) -> CGRect {
		return CGRect(x: self.origin.x, y: y, width: self.size.width, height: self.size.height)
	}
	
	public func setting(x: CGFloat, y: CGFloat) -> CGRect {
		return CGRect(x: x, y: y, width: self.size.width, height: self.size.height)
	}
	
	public func setting(origin: CGPoint) -> CGRect {
		return CGRect(origin: origin, size: self.size)
	}
	
	public func setting(width: CGFloat) -> CGRect {
		return CGRect(x: self.origin.x, y: self.origin.y, width: width, height: self.size.height)
	}
	
	public func setting(height: CGFloat) -> CGRect {
		return CGRect(x: self.origin.x, y: self.origin.y, width: self.size.width, height: height)
	}
	
	public func setting(width: CGFloat, height: CGFloat) -> CGRect {
		return CGRect(x: self.origin.x, y: self.origin.y, width: width, height: height)
	}
	
	public func setting(length: CGFloat) -> CGRect {
		return CGRect(x: self.origin.x, y: self.origin.y, width: length, height: length)
	}
	
	public func setting(size: CGSize) -> CGRect {
		return CGRect(origin: self.origin, size: size)
	}
}
