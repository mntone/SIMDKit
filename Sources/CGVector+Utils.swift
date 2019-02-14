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

fileprivate func cgVector(_ vector: (dx: CGFloat, dy: CGFloat)) -> CGVector {
	return CGVector(dx: vector.dx, dy: vector.dy)
}

extension CGVector {
	public subscript(index: Int) -> CGFloat {
		switch index {
		case 0: return dx
		case 1: return dy
		default:
			fatalError("Array index out of range")
		}
	}
	
	public var cgPoint: CGPoint {
		return CGPoint(x: self.dx, y: self.dy)
	}
	
	public var cgSize: CGSize {
		return CGSize(width: self.dx, height: self.dy)
	}
	
	public typealias CGVectorTuple = (dx: CGFloat, dy: CGFloat)
	
	public static func + (lhs: CGVector, rhs: CGVectorTuple) -> CGVector {
		return lhs + cgVector(rhs)
	}
	
	public static func + (lhs: CGVectorTuple, rhs: CGVector) -> CGVector {
		return cgVector(lhs) + rhs
	}
	
	public static func - (lhs: CGVector, rhs: CGVectorTuple) -> CGVector {
		return lhs - cgVector(rhs)
	}
	
	public static func - (lhs: CGVectorTuple, rhs: CGVector) -> CGVector {
		return cgVector(lhs) - rhs
	}
	
	public static func +- (lhs: CGVector, rhs: CGVectorTuple) -> CGVector {
		return lhs + cgVector(rhs)
	}
	
	public static func +- (lhs: CGVectorTuple, rhs: CGVector) -> CGVector {
		return cgVector(lhs) + rhs
	}
	
	public static func -+ (lhs: CGVector, rhs: CGVectorTuple) -> CGVector {
		return lhs - cgVector(rhs)
	}
	
	public static func -+ (lhs: CGVectorTuple, rhs: CGVector) -> CGVector {
		return cgVector(lhs) - rhs
	}
	
	public static func * (lhs: CGVector, rhs: CGVectorTuple) -> CGVector {
		return lhs * cgVector(rhs)
	}
	
	public static func * (lhs: CGVectorTuple, rhs: CGVector) -> CGVector {
		return cgVector(lhs) * rhs
	}
	
	public static func / (lhs: CGVector, rhs: CGVectorTuple) -> CGVector {
		return lhs / cgVector(rhs)
	}
	
	public static func / (lhs: CGVectorTuple, rhs: CGVector) -> CGVector {
		return cgVector(lhs) / rhs
	}
	
	public static func += (lhs: inout CGVector, rhs: CGVectorTuple) {
		lhs += cgVector(rhs)
	}
	
	public static func -= (lhs: inout CGVector, rhs: CGVectorTuple) {
		lhs -= cgVector(rhs)
	}
	
	public static func +-= (lhs: inout CGVector, rhs: CGVectorTuple) {
		lhs +-= cgVector(rhs)
	}
	
	public static func -+= (lhs: inout CGVector, rhs: CGVectorTuple) {
		lhs -+= cgVector(rhs)
	}
	
	public static func *= (lhs: inout CGVector, rhs: CGVectorTuple) {
		lhs *= cgVector(rhs)
	}
	
	public static func /= (lhs: inout CGVector, rhs: CGVectorTuple) {
		lhs /= cgVector(rhs)
	}
}
