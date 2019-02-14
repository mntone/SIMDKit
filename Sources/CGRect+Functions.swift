import simd
#if os(macOS)
import struct CoreGraphics.CGGeometry.CGFloat
import struct CoreGraphics.CGGeometry.CGRect
#else
import struct CoreGraphics.CGFloat
import struct CoreGraphics.CGRect
#endif

public func abs(_ x: CGRect) -> CGRect {
	return CGRect(simd: abs(x.simd))
}

public func ceil(_ x: CGRect) -> CGRect {
	return CGRect(simd: ceil(x.simd))
}

public func clamp(_ x: CGRect, min: CGFloat, max: CGFloat) -> CGRect {
	return CGRect(simd: clamp(x.simd, min: min.native, max: max.native))
}

public func floor(_ x: CGRect) -> CGRect {
	return CGRect(simd: floor(x.simd))
}

public func max(_ x: CGRect, _ y: CGRect) -> CGRect {
	return CGRect(simd: max(x.simd, y.simd))
}

public func min(_ x: CGRect, _ y: CGRect) -> CGRect {
	return CGRect(simd: min(x.simd, y.simd))
}

public func reduce_max(_ x: CGRect) -> CGFloat {
	return CGFloat(reduce_max(x.simd))
}

public func reduce_min(_ x: CGRect) -> CGFloat {
	return CGFloat(reduce_min(x.simd))
}

public func round(_ x: CGRect) -> CGRect {
	return CGRect(x: round(x.origin.x), y: round(x.origin.y), width: round(x.size.width), height: round(x.size.height))
}

public func trunc(_ x: CGRect) -> CGRect {
	return CGRect(simd: trunc(x.simd))
}
