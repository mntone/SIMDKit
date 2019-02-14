import struct CoreGraphics.CGFloat
import simd
import struct UIKit.NSDirectionalEdgeInsets

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func abs(_ x: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
	return NSDirectionalEdgeInsets(simd: abs(x.simd))
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func ceil(_ x: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
	return NSDirectionalEdgeInsets(simd: ceil(x.simd))
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func clamp(_ x: NSDirectionalEdgeInsets, min: CGFloat, max: CGFloat) -> NSDirectionalEdgeInsets {
	return NSDirectionalEdgeInsets(simd: clamp(x.simd, min: min.native, max: max.native))
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func floor(_ x: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
	return NSDirectionalEdgeInsets(simd: floor(x.simd))
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func max(_ x: NSDirectionalEdgeInsets, _ y: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
	return NSDirectionalEdgeInsets(simd: max(x.simd, y.simd))
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func min(_ x: NSDirectionalEdgeInsets, _ y: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
	return NSDirectionalEdgeInsets(simd: min(x.simd, y.simd))
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func reduce_max(_ x: NSDirectionalEdgeInsets) -> CGFloat {
	return CGFloat(reduce_max(x.simd))
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func reduce_min(_ x: NSDirectionalEdgeInsets) -> CGFloat {
	return CGFloat(reduce_min(x.simd))
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func round(_ x: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
	return NSDirectionalEdgeInsets(top: round(x.top), leading: round(x.leading), bottom: round(x.bottom), trailing: round(x.trailing))
}

@available(iOS 11.0, tvOS 11.0, watchOS 4.0, *)
public func trunc(_ x: NSDirectionalEdgeInsets) -> NSDirectionalEdgeInsets {
	return NSDirectionalEdgeInsets(simd: trunc(x.simd))
}
