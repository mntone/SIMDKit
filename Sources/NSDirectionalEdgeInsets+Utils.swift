import struct CoreGraphics.CGFloat
import struct UIKit.NSDirectionalEdgeInsets

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
extension NSDirectionalEdgeInsets {
	public var verical: CGFloat {
		return self.top + self.bottom
	}
	
	public var horizontal: CGFloat {
		return self.leading + self.trailing
	}
	
	public subscript(index: Int) -> CGFloat {
		switch index {
		case 0: return top
		case 1: return leading
		case 2: return bottom
		case 3: return trailing
		default:
			fatalError("Array index out of range")
		}
	}
}
