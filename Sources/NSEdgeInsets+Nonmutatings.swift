import struct AppKit.NSEdgeInsets
import struct CoreGraphics.CGFloat

extension NSEdgeInsets {
	public func adding(top: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top + top, left: self.left, bottom: self.bottom, right: self.right)
	}
	
	public func adding(left: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top, left: self.left + left, bottom: self.bottom, right: self.right)
	}
	
	public func adding(bottom: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top, left: self.left, bottom: self.bottom + bottom, right: self.right)
	}
	
	public func adding(right: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top, left: self.left, bottom: self.bottom, right: self.right + right)
	}
	
	public func adding(vertical: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top + vertical, left: self.left, bottom: self.bottom + vertical, right: self.right)
	}
	
	public func adding(horizontal: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top, left: self.left + horizontal, bottom: self.bottom, right: self.right + horizontal)
	}
	
	public func adding(all: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top + all, left: self.left + all, bottom: self.bottom + all, right: self.right + all)
	}
	
	
	public func setting(top: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: top, left: self.left, bottom: self.bottom, right: self.right)
	}
	
	public func setting(left: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top, left: left, bottom: self.bottom, right: self.right)
	}
	
	public func setting(bottom: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top, left: self.left, bottom: bottom, right: self.right)
	}
	
	public func setting(right: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top, left: self.left, bottom: self.bottom, right: right)
	}
	
	public func setting(vertical: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: vertical, left: self.left, bottom: vertical, right: self.right)
	}
	
	public func setting(horizontal: CGFloat) -> NSEdgeInsets {
		return NSEdgeInsets(top: self.top, left: horizontal, bottom: self.bottom, right: horizontal)
	}
}
