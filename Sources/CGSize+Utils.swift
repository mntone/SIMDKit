#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGPoint
import struct CoreGraphics.CGGeometry.CGSize
import struct CoreGraphics.CGGeometry.CGVector
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGPoint
import struct CoreGraphics.CGSize
import struct CoreGraphics.CGVector
#endif

infix operator +-: AdditionPrecedence
infix operator -+: AdditionPrecedence
infix operator +-=: AssignmentPrecedence
infix operator -+=: AssignmentPrecedence

fileprivate func cgSize(_ size: (width: CGFloat, height: CGFloat)) -> CGSize {
	return CGSize(width: size.width, height: size.height)
}

extension CGSize {
	public subscript(index: Int) -> CGFloat {
		switch index {
		case 0: return width
		case 1: return height
		default:
			fatalError("Array index out of range")
		}
	}
	
	public var cgPoint: CGPoint {
		return CGPoint(x: self.width, y: self.height)
	}
	
	public var cgVector: CGVector {
		return CGVector(dx: self.width, dy: self.height)
	}
	
	public typealias CGSizeTuple = (width: CGFloat, height: CGFloat)
	
	public static func + (lhs: CGSize, rhs: CGSizeTuple) -> CGSize {
		return lhs + cgSize(rhs)
	}
	
	public static func + (lhs: CGSizeTuple, rhs: CGSize) -> CGSize {
		return cgSize(lhs) + rhs
	}
	
	public static func - (lhs: CGSize, rhs: CGSizeTuple) -> CGSize {
		return lhs - cgSize(rhs)
	}
	
	public static func - (lhs: CGSizeTuple, rhs: CGSize) -> CGSize {
		return cgSize(lhs) - rhs
	}
	
	public static func +- (lhs: CGSize, rhs: CGSizeTuple) -> CGSize {
		return lhs + cgSize(rhs)
	}
	
	public static func +- (lhs: CGSizeTuple, rhs: CGSize) -> CGSize {
		return cgSize(lhs) + rhs
	}
	
	public static func -+ (lhs: CGSize, rhs: CGSizeTuple) -> CGSize {
		return lhs - cgSize(rhs)
	}
	
	public static func -+ (lhs: CGSizeTuple, rhs: CGSize) -> CGSize {
		return cgSize(lhs) - rhs
	}
	
	public static func * (lhs: CGSize, rhs: CGSizeTuple) -> CGSize {
		return lhs * cgSize(rhs)
	}
	
	public static func * (lhs: CGSizeTuple, rhs: CGSize) -> CGSize {
		return cgSize(lhs) * rhs
	}
	
	public static func / (lhs: CGSize, rhs: CGSizeTuple) -> CGSize {
		return lhs / cgSize(rhs)
	}
	
	public static func / (lhs: CGSizeTuple, rhs: CGSize) -> CGSize {
		return cgSize(lhs) / rhs
	}
	
	public static func += (lhs: inout CGSize, rhs: CGSizeTuple) {
		lhs += cgSize(rhs)
	}
	
	public static func -= (lhs: inout CGSize, rhs: CGSizeTuple) {
		lhs -= cgSize(rhs)
	}
	
	public static func +-= (lhs: inout CGSize, rhs: CGSizeTuple) {
		lhs +-= cgSize(rhs)
	}
	
	public static func -+= (lhs: inout CGSize, rhs: CGSizeTuple) {
		lhs -+= cgSize(rhs)
	}
	
	public static func *= (lhs: inout CGSize, rhs: CGSizeTuple) {
		lhs *= cgSize(rhs)
	}
	
	public static func /= (lhs: inout CGSize, rhs: CGSizeTuple) {
		lhs /= cgSize(rhs)
	}
}
