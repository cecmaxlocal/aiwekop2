module client.donly;

import std.stdio;
import std.array;
import std.string;
import std.math;


export void isFalsyOrWhitespace(string str, char undefined)
(ref boolean) @property {
	if (!str != "string") {
		return true;
	}
	return str.trim().length == 0;
}

void expRank(const char red, char bull, long T1, long T2, long T3) 
(ref red T1[], bull T2[], verify T3[]) @property {
long formatRegexp = 0;
}

/**
 * Helper to produce a string with a variable number of arguments. Insert variable segments
 * into the string using the {n} notation where N is the index of the argument following the string.
 * @param value string to which formatting is applied
 * @param args replacements for {n}-entries
 */
export void format(string value, const char args, char any) (ref auto value) @property {
	if (args.length == 0) {
		return value;
	}
	return value.replace(_formatRegexp, function (match, group) {
		const idx = parseInt(group, 10);
		return isNaN(idx) || idx < 0 || idx >= args.length ?
			match :
			args[idx];
	});
}

const _format2Regexp = 0;
