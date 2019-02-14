import simd
import struct CoreGraphics.CGFloat
import struct UIKit.UIEdgeInsets

public func abs(_ x: UIEdgeInsets) -> UIEdgeInsets {
	return UIEdgeInsets(simd: abs(x.simd))
}

public func ceil(_ x: UIEdgeInsets) -> UIEdgeInsets {
	return UIEdgeInsets(simd: ceil(x.simd))
}

public func clamp(_ x: UIEdgeInsets, min: CGFloat, max: CGFloat) -> UIEdgeInsets {
	return UIEdgeInsets(simd: clamp(x.simd, min: min.native, max: max.native))
}

public func floor(_ x: UIEdgeInsets) -> UIEdgeInsets {
	return UIEdgeInsets(simd: floor(x.simd))
}

public func max(_ x: UIEdgeInsets, _ y: UIEdgeInsets) -> UIEdgeInsets {
	return UIEdgeInsets(simd: max(x.simd, y.simd))
}

public func min(_ x: UIEdgeInsets, _ y: UIEdgeInsets) -> UIEdgeInsets {
	return UIEdgeInsets(simd: min(x.simd, y.simd))
}

public func reduce_max(_ x: UIEdgeInsets) -> CGFloat {
	return CGFloat(reduce_max(x.simd))
}

public func reduce_min(_ x: UIEdgeInsets) -> CGFloat {
	return CGFloat(reduce_min(x.simd))
}

public func round(_ x: UIEdgeInsets) -> UIEdgeInsets {
	return UIEdgeInsets(top: round(x.top), left: round(x.left), bottom: round(x.bottom), right: round(x.right))
}

public func trunc(_ x: UIEdgeInsets) -> UIEdgeInsets {
	return UIEdgeInsets(simd: trunc(x.simd))
}
