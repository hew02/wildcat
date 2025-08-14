/*
 * Copyright (c) 2025 Punch Software
 * 
 * Shared variables.
 */
package wildcat;

class Common {

	static var _nextUniqueId = 0;
	public static inline function makeUniqueId() {
			return _nextUniqueId++;
	}
}
