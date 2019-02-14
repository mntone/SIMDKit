import struct AppKit.NSEdgeInsets
import struct CoreGraphics.CGFloat

extension NSEdgeInsets {
	public mutating func add(top: CGFloat) {
		self.top += top
	}
	
	public mutating func add(left: CGFloat) {
		self.left += left
	}
	
	public mutating func add(bottom: CGFloat) {
		self.bottom += bottom
	}
	
	public mutating func add(right: CGFloat) {
		self.right += right
	}
	
	public mutating func add(vertical: CGFloat) {
		self.top += vertical
		self.bottom += vertical
	}
	
	public mutating func add(horizontal: CGFloat) {
		self.left += horizontal
		self.right += horizontal
	}
	
	public mutating func add(all: CGFloat) {
		self += all
	}
}
