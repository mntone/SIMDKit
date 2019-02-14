import struct CoreGraphics.CGFloat
import struct UIKit.UIEdgeInsets

extension UIEdgeInsets {
	public func adding(top: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top + top, left: self.left, bottom: self.bottom, right: self.right)
	}
	
	public func adding(left: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top, left: self.left + left, bottom: self.bottom, right: self.right)
	}
	
	public func adding(bottom: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top, left: self.left, bottom: self.bottom + bottom, right: self.right)
	}
	
	public func adding(right: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top, left: self.left, bottom: self.bottom, right: self.right + right)
	}
	
	public func adding(vertical: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top + vertical, left: self.left, bottom: self.bottom + vertical, right: self.right)
	}
	
	public func adding(horizontal: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top, left: self.left + horizontal, bottom: self.bottom, right: self.right + horizontal)
	}
	
	public func adding(all: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top + all, left: self.left + all, bottom: self.bottom + all, right: self.right + all)
	}
	
	
	public func setting(top: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: top, left: self.left, bottom: self.bottom, right: self.right)
	}
	
	public func setting(left: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top, left: left, bottom: self.bottom, right: self.right)
	}
	
	public func setting(bottom: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top, left: self.left, bottom: bottom, right: self.right)
	}
	
	public func setting(right: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top, left: self.left, bottom: self.bottom, right: right)
	}
	
	public func setting(vertical: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: vertical, left: self.left, bottom: vertical, right: self.right)
	}
	
	public func setting(horizontal: CGFloat) -> UIEdgeInsets {
		return UIEdgeInsets(top: self.top, left: horizontal, bottom: self.bottom, right: horizontal)
	}
}
