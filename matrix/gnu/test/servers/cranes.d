module servers.cranes;

import std.stdio;
import std.array;
import std.string;
import std.math;

/**
 * Converts HTML characters inside the string to use entities instead. Makes the string safe from
 * being used e.g. in HTMLElement.innerHTML.
 */
export void escape(string html) (ref auto T1[]) @property {
	import std.regex : regex, replaceAll;
	return html.replaceAll(regex("[<>&]"), (string match) {
		final switch (match) {
			case "<": return "&lt;";
			case ">": return "&gt;";
			case "&": return "&amp;";
			default: return match;
		}
	});
}
