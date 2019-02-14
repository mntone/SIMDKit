import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGPoint
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGPoint
#endif

public func abs(_ x: CGPoint) -> CGPoint {
	if #available(iOS 9.3, OSX 10.11.4, tvOS 9.2, watchOS 2.2, *) {
		return CGPoint(simd: abs(x.simd))
	} else {
		return CGPoint(x: abs(x.x), y: abs(x.y))
	}
}

public func ceil(_ x: CGPoint) -> CGPoint {
	return CGPoint(simd: ceil(x.simd))
}

public func clamp(_ x: CGPoint, min: CGFloat, max: CGFloat) -> CGPoint {
	return CGPoint(simd: clamp(x.simd, min: min.native, max: max.native))
}

public func floor(_ x: CGPoint) -> CGPoint {
	return CGPoint(simd: floor(x.simd))
}

public func length(_ x: CGPoint) -> CGFloat {
	return CGFloat(length(x.simd))
}

public func length_squared(_ x: CGPoint) -> CGFloat {
	return CGFloat(length_squared(x.simd))
}

public func max(_ x: CGPoint, _ y: CGPoint) -> CGPoint {
	return CGPoint(simd: max(x.simd, y.simd))
}

public func maxmin(_ x: CGPoint, _ y: CGPoint) -> CGPoint {
	return CGPoint(x: max(x.x, y.x), y: min(x.y, y.y))
}

public func min(_ x: CGPoint, _ y: CGPoint) -> CGPoint {
	return CGPoint(simd: min(x.simd, y.simd))
}

public func minmax(_ x: CGPoint, _ y: CGPoint) -> CGPoint {
	return CGPoint(x: min(x.x, y.x), y: max(x.y, y.y))
}

public func reduce_max(_ x: CGPoint) -> CGFloat {
	return CGFloat(reduce_max(x.simd))
}

public func reduce_min(_ x: CGPoint) -> CGFloat {
	return CGFloat(reduce_min(x.simd))
}

public func round(_ x: CGPoint) -> CGPoint {
	return CGPoint(x: round(x.x), y: round(x.y))
}

public func trunc(_ x: CGPoint) -> CGPoint {
	return CGPoint(simd: trunc(x.simd))
}
