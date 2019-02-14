import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGVector
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGVector
#endif

public func abs(_ x: CGVector) -> CGVector {
	return CGVector(simd: abs(x.simd))
}

public func ceil(_ x: CGVector) -> CGVector {
	return CGVector(simd: ceil(x.simd))
}

public func clamp(_ x: CGVector, min: CGFloat, max: CGFloat) -> CGVector {
	return CGVector(simd: clamp(x.simd, min: min.native, max: max.native))
}

public func floor(_ x: CGVector) -> CGVector {
	return CGVector(simd: floor(x.simd))
}

public func length(_ x: CGVector) -> CGFloat {
	return CGFloat(length(x.simd))
}

public func length_squared(_ x: CGVector) -> CGFloat {
	return CGFloat(length_squared(x.simd))
}

public func max(_ x: CGVector, _ y: CGVector) -> CGVector {
	return CGVector(simd: max(x.simd, y.simd))
}

public func maxmin(_ x: CGVector, _ y: CGVector) -> CGVector {
	return CGVector(dx: max(x.dx, y.dx), dy: min(x.dy, y.dy))
}

public func min(_ x: CGVector, _ y: CGVector) -> CGVector {
	return CGVector(simd: min(x.simd, y.simd))
}

public func minmax(_ x: CGVector, _ y: CGVector) -> CGVector {
	return CGVector(dx: min(x.dx, y.dx), dy: max(x.dy, y.dy))
}

public func reduce_max(_ x: CGVector) -> CGFloat {
	return CGFloat(reduce_max(x.simd))
}

public func reduce_min(_ x: CGVector) -> CGFloat {
	return CGFloat(reduce_min(x.simd))
}

public func round(_ x: CGVector) -> CGVector {
	return CGVector(dx: round(x.dx), dy: round(x.dy))
}

public func trunc(_ x: CGVector) -> CGVector {
	return CGVector(simd: trunc(x.simd))
}
