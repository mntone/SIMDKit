import struct CoreGraphics.CGFloat
import struct UIKit.NSDirectionalEdgeInsets

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets {
	public mutating func add(top: CGFloat) {
		self.top += top
	}
	
	public mutating func add(leading: CGFloat) {
		self.leading += leading
	}
	
	public mutating func add(bottom: CGFloat) {
		self.bottom += bottom
	}
	
	public mutating func add(trailing: CGFloat) {
		self.trailing += trailing
	}
	
	public mutating func add(vertical: CGFloat) {
		self.top += vertical
		self.bottom += vertical
	}
	
	public mutating func add(horizontal: CGFloat) {
		self.leading += horizontal
		self.trailing += horizontal
	}
	
	public mutating func add(all: CGFloat) {
		self += all
	}
}
