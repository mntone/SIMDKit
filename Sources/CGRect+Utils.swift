#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGRect
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGRect
#endif

extension CGRect {
	public subscript(index: Int) -> CGFloat {
		switch index {
		case 0: return origin.x
		case 1: return origin.y
		case 2: return size.width
		case 3: return size.height
		default:
			fatalError("Array index out of range")
		}
	}
}
