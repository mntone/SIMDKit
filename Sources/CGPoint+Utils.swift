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

fileprivate func cgPoint(_ point: (x: CGFloat, y: CGFloat)) -> CGPoint {
	return CGPoint(x: point.x, y: point.y)
}

extension CGPoint {
	public subscript(index: Int) -> CGFloat {
		switch index {
		case 0: return x
		case 1: return y
		default:
			fatalError("Array index out of range")
		}
	}
	
	public var cgSize: CGSize {
		return CGSize(width: self.x, height: self.y)
	}
	
	public var cgVector: CGVector {
		return CGVector(dx: self.x, dy: self.y)
	}
	
	public typealias CGPointTuple = (x: CGFloat, y: CGFloat)
	
	public static func + (lhs: CGPoint, rhs: CGPointTuple) -> CGPoint {
		return lhs + cgPoint(rhs)
	}
	
	public static func + (lhs: CGPointTuple, rhs: CGPoint) -> CGPoint {
		return cgPoint(lhs) + rhs
	}
	
	public static func - (lhs: CGPoint, rhs: CGPointTuple) -> CGPoint {
		return lhs - cgPoint(rhs)
	}
	
	public static func - (lhs: CGPointTuple, rhs: CGPoint) -> CGPoint {
		return cgPoint(lhs) - rhs
	}
	
	public static func +- (lhs: CGPoint, rhs: CGPointTuple) -> CGPoint {
		return lhs + cgPoint(rhs)
	}
	
	public static func +- (lhs: CGPointTuple, rhs: CGPoint) -> CGPoint {
		return cgPoint(lhs) + rhs
	}
	
	public static func -+ (lhs: CGPoint, rhs: CGPointTuple) -> CGPoint {
		return lhs - cgPoint(rhs)
	}
	
	public static func -+ (lhs: CGPointTuple, rhs: CGPoint) -> CGPoint {
		return cgPoint(lhs) - rhs
	}
	
	public static func * (lhs: CGPoint, rhs: CGPointTuple) -> CGPoint {
		return lhs * cgPoint(rhs)
	}
	
	public static func * (lhs: CGPointTuple, rhs: CGPoint) -> CGPoint {
		return cgPoint(lhs) * rhs
	}
	
	public static func / (lhs: CGPoint, rhs: CGPointTuple) -> CGPoint {
		return lhs / cgPoint(rhs)
	}
	
	public static func / (lhs: CGPointTuple, rhs: CGPoint) -> CGPoint {
		return cgPoint(lhs) / rhs
	}
	
	public static func += (lhs: inout CGPoint, rhs: CGPointTuple) {
		lhs += cgPoint(rhs)
	}
	
	public static func -= (lhs: inout CGPoint, rhs: CGPointTuple) {
		lhs -= cgPoint(rhs)
	}
	
	public static func +-= (lhs: inout CGPoint, rhs: CGPointTuple) {
		lhs +-= cgPoint(rhs)
	}
	
	public static func -+= (lhs: inout CGPoint, rhs: CGPointTuple) {
		lhs -+= cgPoint(rhs)
	}
	
	public static func *= (lhs: inout CGPoint, rhs: CGPointTuple) {
		lhs *= cgPoint(rhs)
	}
	
	public static func /= (lhs: inout CGPoint, rhs: CGPointTuple) {
		lhs /= cgPoint(rhs)
	}
}
