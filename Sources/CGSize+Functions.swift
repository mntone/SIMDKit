import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGSize
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGSize
#endif

public func abs(_ x: CGSize) -> CGSize {
	return CGSize(simd: abs(x.simd))
}

public func ceil(_ x: CGSize) -> CGSize {
	return CGSize(simd: ceil(x.simd))
}

public func clamp(_ x: CGSize, min: CGFloat, max: CGFloat) -> CGSize {
	return CGSize(simd: clamp(x.simd, min: min.native, max: max.native))
}

public func floor(_ x: CGSize) -> CGSize {
	return CGSize(simd: floor(x.simd))
}

public func length(_ x: CGSize) -> CGFloat {
	return CGFloat(length(x.simd))
}

public func length_squared(_ x: CGSize) -> CGFloat {
	return CGFloat(length_squared(x.simd))
}

public func max(_ x: CGSize, _ y: CGSize) -> CGSize {
	return CGSize(simd: max(x.simd, y.simd))
}

public func maxmin(_ x: CGSize, _ y: CGSize) -> CGSize {
	return CGSize(width: max(x.width, y.width), height: min(x.height, y.height))
}

public func min(_ x: CGSize, _ y: CGSize) -> CGSize {
	return CGSize(simd: min(x.simd, y.simd))
}

public func minmax(_ x: CGSize, _ y: CGSize) -> CGSize {
	return CGSize(width: min(x.width, y.width), height: max(x.height, y.height))
}

public func reduce_max(_ x: CGSize) -> CGFloat {
	return CGFloat(reduce_max(x.simd))
}

public func reduce_min(_ x: CGSize) -> CGFloat {
	return CGFloat(reduce_min(x.simd))
}

public func round(_ x: CGSize) -> CGSize {
	return CGSize(width: round(x.width), height: round(x.height))
}

public func trunc(_ x: CGSize) -> CGSize {
	return CGSize(simd: trunc(x.simd))
}
