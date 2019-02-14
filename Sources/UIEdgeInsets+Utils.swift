import struct CoreGraphics.CGFloat
import struct UIKit.UIEdgeInsets

extension UIEdgeInsets {
	public var verical: CGFloat {
		return self.top + self.bottom
	}
	
	public var horizontal: CGFloat {
		return self.left + self.right
	}
	
	public subscript(index: Int) -> CGFloat {
		switch index {
		case 0: return top
		case 1: return left
		case 2: return bottom
		case 3: return right
		default:
			fatalError("Array index out of range")
		}
	}
}
