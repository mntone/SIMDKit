import struct CoreGraphics.CGFloat
import struct UIKit.NSDirectionalEdgeInsets

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets {
	public func adding(top: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top + top, leading: self.leading, bottom: self.bottom, trailing: self.trailing)
	}
	
	public func adding(leading: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top, leading: self.leading + leading, bottom: self.bottom, trailing: self.trailing)
	}
	
	public func adding(bottom: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top, leading: self.leading, bottom: self.bottom + bottom, trailing: self.trailing)
	}
	
	public func adding(trailing: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top, leading: self.leading, bottom: self.bottom, trailing: self.trailing + trailing)
	}
	
	public func adding(vertical: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top + vertical, leading: self.leading, bottom: self.bottom + vertical, trailing: self.trailing)
	}
	
	public func adding(horizontal: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top, leading: self.leading + horizontal, bottom: self.bottom, trailing: self.trailing + horizontal)
	}
	
	public func adding(all: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top + all, leading: self.leading + all, bottom: self.bottom + all, trailing: self.trailing + all)
	}
	
	
	public func setting(top: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: top, leading: self.leading, bottom: self.bottom, trailing: self.trailing)
	}
	
	public func setting(leading: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top, leading: leading, bottom: self.bottom, trailing: self.trailing)
	}
	
	public func setting(bottom: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top, leading: self.leading, bottom: bottom, trailing: self.trailing)
	}
	
	public func setting(trailing: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top, leading: self.leading, bottom: self.bottom, trailing: trailing)
	}
	
	public func setting(vertical: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: vertical, leading: self.leading, bottom: vertical, trailing: self.trailing)
	}
	
	public func setting(horizontal: CGFloat) -> NSDirectionalEdgeInsets {
		return NSDirectionalEdgeInsets(top: self.top, leading: horizontal, bottom: self.bottom, trailing: horizontal)
	}
}
