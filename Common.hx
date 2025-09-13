/*
 * Copyright (c) 2025 Punch Software
 * 
 * Shared variables.
 */
package wildcat;

class Common {

	public static var epoch: Float;

	static var _nextUniqueId = 0;
	public static inline function makeUniqueId() {
			return _nextUniqueId++;
	}
}
