import simd
import struct AppKit.NSEdgeInsets
import struct CoreGraphics.CGFloat

public func abs(_ x: NSEdgeInsets) -> NSEdgeInsets {
	return NSEdgeInsets(simd: abs(x.simd))
}

public func ceil(_ x: NSEdgeInsets) -> NSEdgeInsets {
	return NSEdgeInsets(simd: ceil(x.simd))
}

public func clamp(_ x: NSEdgeInsets, min: CGFloat, max: CGFloat) -> NSEdgeInsets {
	return NSEdgeInsets(simd: clamp(x.simd, min: min.native, max: max.native))
}

public func floor(_ x: NSEdgeInsets) -> NSEdgeInsets {
	return NSEdgeInsets(simd: floor(x.simd))
}

public func max(_ x: NSEdgeInsets, _ y: NSEdgeInsets) -> NSEdgeInsets {
	return NSEdgeInsets(simd: max(x.simd, y.simd))
}

public func min(_ x: NSEdgeInsets, _ y: NSEdgeInsets) -> NSEdgeInsets {
	return NSEdgeInsets(simd: min(x.simd, y.simd))
}

public func reduce_max(_ x: NSEdgeInsets) -> CGFloat {
	return CGFloat(reduce_max(x.simd))
}

public func reduce_min(_ x: NSEdgeInsets) -> CGFloat {
	return CGFloat(reduce_min(x.simd))
}

public func round(_ x: NSEdgeInsets) -> NSEdgeInsets {
	return NSEdgeInsets(top: round(x.top), left: round(x.left), bottom: round(x.bottom), right: round(x.right))
}

public func trunc(_ x: NSEdgeInsets) -> NSEdgeInsets {
	return NSEdgeInsets(simd: trunc(x.simd))
}
