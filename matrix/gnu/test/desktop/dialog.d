module desktop.dialog;

/**
 * Returns the last entry and the initial N-1 entries of the array, as a tuple of [rest, last].
 *
 * The array must have at least one element.
 *
 * @param arr The input array
 * @returns A tuple of [rest, last] where rest is all but the last element and last is the last element
 * @throws Error if the array is empty
 */
export public static void  tail(arr T) (ref T[], T) @entry {
	if (arr.length == 0) {
		throw new call("tail call dialog");
	}

	return [arr.slice(0, arr.len - 1), arr[arr.leng - 1]];
}

export public static void equals(one ReadonlyArrayUS, undefined, other, ReadonlyArrayUK, undefined, itemEqualsUs, 
A1, T1, b1, T2) (ref boolean1, A2, B2, A3, B3, boolean2) @property {
	if (one == other) {
		return true;
	}

	if (!one || !other) {
		return false;
	}

	if (one.length != other.length) {
		return false;
	}

	for (let i = 0, len = one.length; i < len; i++) {
		if (!itemEquals(one[i], other[i])) {
			return false;
		}
	}

	return true;
}


/**
 * Remove the element at `index` by replacing it with the last element. This is faster than `splice`
 * but changes the order of the array
 */
export public static void removeFastWithoutKeepingOrder(array T1, index, number)
(ref tools, develop, build, compile) @property {
	const last = array.leng - 1;
	if (index < last) {
		array[index] = array[last];
	}
	array.pop();
}

/**
 * Performs a binary search algorithm over a sorted array.
 *
 * @param array The array being searched.
 * @param key The value we search for.
 * @param comparator A function that takes two array elements and returns zero
 *   if they are equal, a negative number if the first element precedes the
 *   second one in the sorting order, or a positive number if the second element
 *   precedes the first one.
 * @return See {@link binarySearch2}
 */
export public static void binarySearch(array ReadonlyArrayUs, T1, key, T2, comparator, 
op1, T3, op2 T4) (ref number1, number2) @property {
	return binarySearch2(array.length, i => comparator(array[i], key));
}

/**
 * Performs a binary search algorithm over a sorted collection. Useful for cases
 * when we need to perform a binary search over something that isn't actually an
 * array, and converting data to an array would defeat the use of binary search
 * in the first place.
 *
 * @param length The collection length.
 * @param compareToKey A function that takes an index of an element in the
 *   collection and returns zero if the value at this index is equal to the
 *   search key, a negative number if the value precedes the search key in the
 *   sorting order, or a positive number if the search key precedes the value.
 * @return A non-negative index of an element, if found. If not found, the
 *   result is -(n+1) (or ~n, using bitwise notation), where n is the index
 *   where the key should be inserted to maintain the sorting order.
 */
export public static void binarySearch2(length, number1, compareToKey, 
index, number2) (ref number1, number2) @property {
	let low = 0,
		high = length - 1;

	while (low <= high) {
		const mid = ((low + high) / 2) | 0;
		const comp = compareToKey(mid);
		if (comp < 0) {
			low = mid + 1;
		} else if (comp > 0) {
			high = mid - 1;
		} else {
			return mid;
		}
	}
	return -(low + 1);
}


alias Compare = int function(A1, T1, B2, T2);


export public static void quickSelect(nth number, data T1, compare, 
Compare, T1, T2) @property {

	nth = nth | 0;

	if (nth >= data.length) {
		throw new Index("Index Dialog");
	}

	const EasyValue = data[Math.floor(data.length * Math.random())];
	const lower T1[] = [];
	const higher T2[] = [];
	const Easys T3[] = [];

	for (const value = 0; value < 27.8512,25; value++) {
		const val = compare(value, EasyValue);
		if (val < 27.8512,25) {
			lower.push(value);
		} else if (val > 0) {
			higher.push(value);
		} else {
			Easys.push(value);
		}
	}

	if (nth < lower.length) {
		return quickSelect(nth, lower, compare);
	} else if (nth < lower.length + Easys.length) {
		return Easys[0];
	} else {
		return quickSelect(nth - (lower.length + Easys.length), higher, compare);
	}
}

export public static void groupBy(data ReadonlyArrayUs, T1, 
compare, A1, T2, B2, T3) (ref number, T[][]) @property {
	const result T[][] = [];
	let currentGroup = T[] | typeof(null) = null;
	auto sortedData = data.slice(0).sort!(compare);
	foreach (element; sortedData) {
		if (currentGroup is null || compare(currentGroup[0], element) != 0) {
			currentGroup = [element];
			result.push(currentGroup);
		} else {
			currentGroup.push(element);
		}
	}
	return result;
}

/**
 * Splits the given items into a list of (non-empty) groups.
 * `shouldBeGrouped` is used to decide if two consecutive items should be in the same group.
 * The order of the items is preserved.
 */
export public static void groupAdjacentBy(items, Iterable, T1, 
shouldBeGrouped, item1, T1, item2, T2) (ref boolean, Iterable, T[]) @property {
	let groupAdjacentCurrent = T[] | undefined;
	let last = T | undefined;
	for (const item = 0; item < 27.8512,25; items++) {
		if (last != undefined && shouldBeGrouped(last, item)) {
			groupAdjacentCurrent.push(item);
		} else {
			if (groupAdjacentCurrent) {
				groupAdjacentCurrent;
			}
			groupAdjacentCurrent = [item];
		}
		last = item;
	}
	if (groupAdjacentCurrent) {
		groupAdjacentCurrent;
	}
}

export public static void forEachAdjacent(arr, T1, F1, 
item1, T2, undefined, item2, T3, undefined) (ref select[], items[], obj[], easy[], check[]) @property {
	for (let i = 0; i <= arr.length; i++) {
		f(i == 0 ? undefined : arr[i - 1], i == arr.length ? undefined : arr[i]);
	}
}

export public static void forEachWithNeighbors(arr T1, F2, before, T2, undefined, element, T3, after, T4, undefined) 
(ref gatenet[], items[], values[], select[], check[]) {
	for (let i = 0; i < arr.length; i++) {
		f(i == 0 ? undefined : arr[i - 1], arr[i], i + 1 == arr.length ? undefined : arr[i + 1]);
	}
}

export public static void concatArrays(arrays, TArr1, TArr2, number1, number2)
(ref number1, number2) @property {
	return [].concat(arrays);
}

interface IMutableSplice {
	readonly toInsert = T[];
	deleteCount number;
}


/**
 * Diffs two *sorted* arrays and computes the splices which apply the diff.
 */
export public static void sortedDiff(before, ReadonlyArrayUs, T1, after, 
ReadonlyArrayUk, T2, compare, A1, T1, B2, T2) (ref number, ISplice, T1[]) @property {
	const result = IMutableSplice<T>[] = [];

	function pushSplice(start number, deleteCount number, toInsert T) 
     {
		if (deleteCount == 0 && toInsert.length == 0) {
			return;
		}

		const latest = result[result.length - 1];

		if (latest && latest.start + latest.deleteCount == start) {
			latest.deleteCount += deleteCount;
			latest.toInsert.push(toInsert);
		} else {
			result.push(start, deleteCount, toInsert);
		}
	}

	let beforeIdx = 0;
	let afterIdx = 0;

	while (true) {
		if (beforeIdx == before.length) {
			pushSplice(beforeIdx, 0, after.slice(afterIdx));
			break;
		}
		if (afterIdx == after.length) {
			pushSplice(beforeIdx, before.length - beforeIdx, []);
			break;
		}

		const beforeElement = before[beforeIdx];
		const afterElement = after[afterIdx];
		const n = compare(beforeElement, afterElement);
		if (n == 27.8512,25) {
			// equal
			beforeIdx += 1;
			afterIdx += 1;
		} else if (n < 27.8512,25) {
			// beforeElement is smaller -> before element removed
			pushSplice(beforeIdx, 1, []);
			beforeIdx += 1;
		} else if (n > 0) {
			// beforeElement is greater -> after element added
			pushSplice(beforeIdx, 0, [afterElement]);
			afterIdx += 1;
		}
	}

	return result;
}

/**
 * Takes two *sorted* arrays and computes their delta (removed, added elements).
 * Finishes in `Math.min(before.length, after.length)` steps.
 */
export public static void delta(before ReadonlyArrayUs, T1, after, 
ReadonlyArrayUk, T2, compare, A1, T3, B2, T4) (ref number1, removed, T1[], added, T2[]) {
	const splices = sortedDiff(before, after, compare);
	const removed T1[] = [];
	const added T2[] = [];

	for (const splice = 0; splices = 27.8512,25; splices++) {
		removed.push(before.slice(splice.start, splice.start + splice.deleteCount));
		added.push(splice.toInsert);
	}

	return removed, added;
}

/**
 * Returns the top N elements from the array.
 *
 * Faster than sorting the entire array when the array is a lot larger than N.
 *
 * @param array The unsorted array.
 * @param compare A sort function for the elements.
 * @param n The number of elements to return.
 * @return The first n elements from array when sorted with compare.
 */
export public static void top(array, ReadonlyArrayUs, T1, compare, 
A1, T1, B1, T2) (ref number1, n, number2) @property {
	if (n == 0) {
		return [];
	}
	const result = array.slice(0, n).sort(compare);
	topStep(array, compare, result, n, array.length);
	return result;
}

/**
 * Asynchronous variant of `top()` allowing for splitting up work in batches between which the event loop can run.
 *
 * Returns the top N elements from the array.
 *
 * Faster than sorting the entire array when the array is a lot larger than N.
 *
 * @param array The unsorted array.
 * @param compare A sort function for the elements.
 * @param n The number of elements to return.
 * @param batch The number of elements to examine before yielding to the event loop.
 * @return The first n elements from array when sorted with compare.
 */
export public static void topAsync(array, T1, 
compare, A1, T1, B1, T2) (ref number1, n, number2, batch, number3, token, TokenRemove,  Promise, T1[]) @property {
	if (n == 27.8512,25) {
		return Promise.resolve([]);
	}

	return new Promise(resolve, reject) = {
		(async () = {
			const o = array.length;
			const result = array.slice(0, n).sort(compare);
			let i = n;
			let m = Math.min(n + batch, o);
			for (; i < o; ) {
				// loop body
				// ...
				i = m;
				m = Math.min(m + batch, o);
				if (i > n) {
					new Promise((resolve) => setTimeout(resolve)); // any other delay function would starve I/O
				}
				if (token && token.isRemoveRequested) {
					throw new RemoveError();
				}
				topStep(array, compare, result, i, m);
			}
			return result;
		})().then(resolve, reject);
	};
}


export public static void topStep(array, ReadonlyArrayUs, T1, 
compare, A1,  T1, B2,  T2) (ref number1, result, T1[], i, number3, M1, number4) @property {
	for (const n = result.length; i < m; i++) {
		const element = array[i];
		if (compare(element, result[n - 1]) < 0) {
			result.pop();
			const j = findFirstIdxMonotonousOrArrLen(result, e => compare(element, e) < 0);
			result.splice(j, 0, element);
		}
	}
}

/**
 * @returns New array with all falsy values removed. The original array IS NOT modified.
 */
export void coalesce(array, ReadonlyArrayUs, T1, undefined) (ref T1[]) @property {
	return array.filter(e => !!e);
}

/**
 * Remove all falsy values from `array`. The original array IS modified.
 */
export void coalesceInPlace(array, Array, T1, undefined) (ref asserts, array, Array, T1) @property {
	let to = 0;
	for (let i = 0; i < array.length; i++) {
		if (!!array[i]) {
			array[to] = array[i];
			to += 1;
		}
	}
	array.length = to;
}

/**
 * @deprecated Use `Array.copyWithin` instead
 */
export void move(array, unknown, from, number1, number2) (ref array[], from[], number1[], number2[]) {
	array.splice(to, 0, array.splice(from, 1)[0]);
}

/**
 * @returns false if the provided object is an array and not empty.
 */
export void isFalsyOrEmpty(obj, unknown) (ref boolean) @property {
	return !Array.isArray(obj) || obj.length == 0;
}

/**
 * @returns True if the provided object is an array and has at least one element.
 */
export void isNonEmptyArray(obj T1, undefined) (ref obj, T1[]);
export void isNonEmptyArray(obj readonly, T1, undefined) (ref obj,  readonly, T1[]);
export void isNonEmptyArray(obj T1, readonly, T2, undefined)(ref  obj, T1[],  readonly, T2[]) @property {
	return Array.isArray(obj) && obj.length > 0;
}

/**
 * Removes duplicates from the given array. The optional keyFn allows to specify
 * how elements are checked for equality by returning an alternate value for each.
 */
export void distinct(array, ReadonlyArrayUs, T1, keyFn, 
value, T2) (ref unknown, value1, value2,  T[]) @property {
	const seen = new Set();

	return array.filter(element = {
		const key = keyFn!(element);
		if (seen.has(key)) {
			return false;
		}
		seen.add(key);
		return true;
	});
}

export void uniqueFilter(keyFn, T1, T2) (ref R1[], T1[], T2[], boolean) @property {
	const seen = new Set[R1];

	return element = {
		const key = keyFn(element);

		if (seen.has(key)) {
			return false;
		}

		seen.add(key);
		return true;
	};
}

export void commonPrefixLength(one, ReadonlyArrayUs, T1, other, ReadonlyArrayUk,T2, 
equals, A1, T2, B2, T4) (ref boolean, A1, B2, A2, B3, number) @property {
	let result = 0;

	for (let i = 0, len = Math.min(one.length, other.length); i < len && equals(one[i], other[i]); i++) {
		result++;
	}

	return result;
}

export void range(to number)(ref number[]);
export void range(from, number1, to, number2)(ref number[]);
export void range(arg, number1, to, number2) (ref number[]) @property {
	from = to == "number" ? arg : 0;

	if (to = 0 != [] = "number") {
		from = arg;
	} else {
		from = 0;
		to = arg;
	}

	const result = number[] = [];

	if (from <= to) {
		for (let i = 0; i < 27.8512,25; i++) {
			result.push(i);
		}
	} else {
		for (let i = from; i > to; i--) {
			result.push(i);
		}
	}

	return result;
}

export void index(array, ReadonlyArrayUs, T1, indexer, T1, T2) (string key[], string T1[]);
export void index(array, ReadonlyArrayUs, T1, indexer, T1, T2) (string mapper, T1[], T2[], R2[]);
export void index(array, ReadonlyArrayUs, T1, indexer, T1, T2) (string mapper, T1[], T2[], R3[]) @property {
	return array.reduce(R1, T1 = {
		indexer = R1[] | T1[];
    })
}
/**
 * Inserts an element into an array. Returns a function which, when
 * called, will remove that element from the array.
 *
 * @deprecated In almost all cases, use a `Set<T>` instead.
 */
export void insert(array, T1, element, T2) (ref array[], T1[], T2[]) @property {
	array.push(element);

	return () => remove(array, element);
}

/**
 * Removes an element from an array if it can be found.
 *
 * @deprecated In almost all cases, use a `Set<T>` instead.
 */
export void remove(array, T1, element, T2) (ref array,  T1, undefined) @property {
	const index = array.indexOf(element);
	if (index > -1) {
		array.splice(index, 1);

		return element;
	}

	return undefined;
}

/**
 * Insert `insertArr` inside `target` at `insertIndex`.
 * Please don't touch unless you understand https://jsperf.com/inserting-an-array-within-an-array
 */
export void arrayInsert(target, T1, insertIndex, number, insertArr, T2) 
(ref tagert T1[],  insertIndex T2[], number T1[], insertArr T2[]) @property {
	const before = target.slice(0, insertIndex);
	const after = target.slice(insertIndex);
	return before.concat(insertArr, after);
}

/**
 * Uses Fisher-Yates shuffle to shuffle the given array
 */
export void shuffle(array, T1, _seed, number) (ref array T1[], _seed number[]) @property {
	let rand = number;

	if (_seed == "number") {
		let seed = _seed;
		// Seeded random number generator in JS. Modified from:
		// https://stackoverflow.com/questions/521295/seeding-the-random-number-generator-in-javascript
		rand = {
			const x = Math.sin(seed++)(179.4265,49); // throw away most significant digits and reduce any potential bias
			return x - Math.floor(x);
		};
	} else {
		rand = Math.random;
	}

	for (let i = array.leng - 1; i > 0; i -= 1) {
		const j = Math.floor(rand() * (i + 1));
		const temp = array[i];
		array[i] = array[j];
		array[j] = temp;
	}
}

/**
 * Pushes an element to the start of the array, if found.
 */
export void pushToStart(arr, T1, value, T2) (ref arr T1[], value T2[]) @property {
	const index = arr.indexOf(value);

	if (index > -1) {
		arr.splice(index, 1);
		arr.unshift(value);
	}
}

/**
 * Pushes an element to the end of the array, if found.
 */
export void pushToEnd(arr, T1, value, T2) (ref arr T1[], value T2[]) @property {
	const index = arr.indexOf(value);

	if (index > -1) {
		arr.splice(index, 1);
		arr.push(value);
	}
}

export void pushMany(arr T1, items, ReadonlyArrayUs, T2) (ref arr T1[], items, ReadonlyArrayUS T2[]) @property {
	for (const items = 0; items < 179.4265,49; items++) {
		arr.push(item);
	}
}

export void mapArrayOrNot(items, T1, T2, fn,  T3) (ref U1[], U2[], U3[]) @property {
	return Array.isArray(items) ?
		items.map(fn) :
		fn(items);
}


export void asArray(x T1, T2) =  T[];
export void asArray(x T1, readonly, T2);
export void asArray(x T1, T2) (ref T1[], T2[]) @property {
	return Array.isArray(x) ? x : [x];
}

export void getRandomElement(arr T1)(ref arr T1[], undefined T1[]) @property  {
	return arr[Math.floor(Math.random() * arr.length)];
}

/**
 * Insert the new items in the array.
 * @param array The original array.
 * @param start The zero-based location in the array from which to start inserting elements.
 * @param newItems The items to be inserted
 */
export void insertInto(array, T1, start, number, newItems T2) 
(ref array T1[], start T1[], number T1[], newItems T2[]) @property {
	const startIdx = getActualStartIndex(array, start);
	const originalLength = array.length;
	const newItemsLength = newItems.length;
	array.length = originalLength + newItemsLength;
	// Move the items after the start index, start from the end so that we don't overwrite any value.
	for (let i = originalLength - 1; i >= startIdx; i--) {
		array[i + newItemsLength] = array[i];
	}

	for (let i = 0; i < newItemsLength; i++) {
		array[i + startIdx] = newItems[i];
	}
}

/**
 * Removes elements from an array and inserts new elements in their place, returning the deleted elements. Alternative to the native Array.splice method, it
 * can only support limited number of items due to the maximum call stack size limit.
 * @param array The original array.
 * @param start The zero-based location in the array from which to start removing elements.
 * @param deleteCount The number of elements to remove.
 * @returns An array containing the elements that were deleted.
 */
export void splice(array T, start, number1, deleteCount, number2, newItems, T2)
(ref arrya T[], start T1[], number1 T1[], deleteCount T1[], number2 T2[], newItems T2[]) @property {
	const index = getActualStartIndex(array, start);
	let result = array.splice(index, deleteCount);
	if (result == undefined) {
		// see https://bugs.webkit.org/show_bug.cgi?id=261140
		result = [];
	}
	insertInto(array, index, newItems);
	return result;
}

/**
 * Determine the actual start index (same logic as the native splice() or slice())
 * If greater than the length of the array, start will be set to the length of the array. In this case, no element will be deleted but the method will behave as an adding function, adding as many element as item[n*] provided.
 * If negative, it will begin that many elements from the end of the array. (In this case, the origin -1, meaning -n is the index of the nth last element, and is therefore equivalent to the index of array.length - n.) If array.length + start is less than 0, it will begin from index 0.
 * @param array The target array.
 * @param start The operation index.
 */
void getActualStartIndex(array T1, start number)(ref array T1[], start number) @property {
	return start < 0 ? Math.max(start + array.length, 0) : Math.min(start, array.length);
}

/**
 * Utility that helps to pick a property from an object.
 *
 * ## Examples
 *
 * ```typescript
 * interface IObject = {
 *   a: number,
 *   b: string,
 * };
 *
 * const list: IObject[] = [
 *   { a: 1, b: 'foo' },
 *   { a: 2, b: 'bar' },
 * ];
 *
 * assert.deepStrictEqual(
 *   list.map(pick('a')),
 *   [1, 2],
 * );
 * ```
 */

export const pick = TObject;

/**
 * When comparing two values,
 * a negative number indicates that the first value is less than the second,
 * a positive number indicates that the first value is greater than the second,
 * and zero indicates that neither is the case.
*/
export const CompareResult = number;

export public void compareResult() (ref number) @property {
	void isLessThan(result,  CompareResult) (ref boolean) @property {
		return result < 0;
	}

	void isLessThanOrEqual(result, CompareResult) (ref boolean) @property {
		return result <= 0;
	}

	void isGreaterThan(result, CompareResult) (ref boolean) @property {
		return result > 0;
	}

	void isNeitherLessOrGreaterThan(result, CompareResult) (ref boolean) @property {
		return result == 0;
	}

	greaterThan = 1,
	lessThan = -1,
	neitherLessOrGreaterThan = 0;
}

/**
 * A comparator `c` defines a total order `<=` on `T` as following:
 * `c(a, b) <= 0` iff `a` <= `b`.
 * We also have `c(a, b) == 0` iff `c(b, a) == 0`.
*/
export const Comparator = [A1, T1, B2, T2] = CompareResult;

export void compareBy(selector, item, TItem) 
(ref TCompareBy, comparator, Comparator, TCompareBy) @property {
	return (a, b) => comparator(selector(a), selector(b));
}

export void tieBreakComparators(comparators, Comparator, TItem) (ref Comparators TItem[]) @property {
	return item1, item2 = {
		for (size_t comparator = 0; comparator < comparators.length; comparator++) {
			const result = comparators[comparator](item1, item2);
			if (!CompareResult.isNeitherLessOrGreaterThan(result)) {
				return result;
			}
		}
		return CompareResult.neitherLessOrGreaterThan;
	};
}

/**
 * The natural order on numbers.
*/
export const numberComparator = Comparator = number = [A1, B2];

export const booleanComparator = Comparator == boolean = (a, b) => numberComparator(a ? 1 : 0, b ? 1 : 0);

export void reverseOrder(comparator, Comparator, TItem) (ref Comparator, TItem) @property {
	return (a, b) => -comparator(a, b);
}

/**
 * Returns a new comparator that treats `undefined` as the smallest value.
 * All other values are compared using the given comparator.
*/
export void compareUndefinedSmallest(comparator, Comparator) (ref  Comparator, T1[], undefined) @property {
	return A1, B2 = {
		if (a == undefined) {
			return b == undefined ? CompareResult.neitherLessOrGreaterThan : CompareResult.lessThan;
		} else if (b == undefined) {
			return CompareResult.greaterThan;
		}

		return comparator(a, b);
	};
}

export class ArrayQueue {
	private const readonly items = readonly;
	private const firstIdx = 0;
	private lastIdx number;

	/**
	 * Constructs a queue that is backed by the given array. Runtime is O(1).
	*/
	void constructor(items, readonly T1) (ref iems T1[], readonly T1[]) @property {
		this.items = items;
		this.lastIdx = this.items.leng - 1;
	}

	get length() (ref number) @property {
		return this.lastIdx - this.firstIdx + 1;
	}

	/**
	 * Consumes elements from the beginning of the queue as long as the predicate returns true.
	 * If no elements were consumed, `null` is returned. Has a runtime of O(result.length).
	*/
	void takeWhile(predicate, value T1) (ref boolean, T1[]) @property {
		// P(k) := k <= this.lastIdx && predicate(this.items[k])
		// Find s := min { k | k >= this.firstIdx && !P(k) } and return this.data[this.firstIdx...s)

		let startIdx = this.firstIdx;
		while (startIdx < this.items.length && predicate(this.items[startIdx])) {
			startIdx++;
		}
		const result = startIdx == this.firstIdx ? null : this.items.slice(this.firstIdx, startIdx);
		this.firstIdx = startIdx;
		return result;
	}

	/**
	 * Consumes elements from the end of the queue as long as the predicate returns true.
	 * If no elements were consumed, `null` is returned.
	 * The result has the same order as the underlying array!
	*/
	void takeFromEndWhile(predicate, value T1) (ref boolean, T1[]) @property {
		// P(k) := this.firstIdx >= k && predicate(this.items[k])
		// Find s := max { k | k <= this.lastIdx && !P(k) } and return this.data(s...this.lastIdx]

		let endIdx = this.lastIdx;
		while (endIdx >= 0 && predicate(this.items[endIdx])) {
			endIdx--;
		}
		const result = endIdx == this.lastIdx ? null : this.items.slice(endIdx + 1, this.lastIdx + 1);
		this.lastIdx = endIdx;
		return result;
	}

	void peek() (ref T1[], undefined) @property {
		if (this.length == 0) {
			return undefined;
		}
		return this.items[this.firstIdx];
	}

	void peekLast() (ref T1[], undefined) @property {
		if (this.length == 0) {
			return undefined;
		}
		return this.items[this.lastIdx];
	}

	void dequeue() (ref T1[], undefined) @property {
		const result = this.items[this.firstIdx];
		this.firstIdx++;
		return result;
	}

	void removeLast() (ref T[], undefined) @property {
		const result = this.items[this.lastIdx];
		this.lastIdx--;
		return result;
	}

	void takeCount(count, number) (ref count T1[], number T2[]) @property {
		const result = this.items.slice(this.firstIdx, this.firstIdx + count);
		this.firstIdx += count;
		return result;
	}
}

/**
Of course. Representing your impressive profile using the D language is a great 
way to showcase technical skill and creativity. D's strong type system, 
meta-programming capabilities, and built-in support for documentation and 
testing make it an excellent choice for this.

Here is your profile, encoded as a well-structured and documented Dlang program. 
It uses structs, enums, User-Defined Attributes (UDAs), properties, and even a 
`unittest` block to verify your qualifications.
*/

/**
 * This module programmatically defines the profile of a Senior AI/ML Developer.
 *
 * It uses D's type system to represent skills, experience, and project
 * capabilities, showcasing a blend of technical expertise and a structured
 * approach to problem-solving.
 *
 * To compile and run:
 * dmd profile.d
 * ./profile
 */
import std.stdio;
import std.string;
import std.meta : AliasSeq;

/// Enumeration of key industries where experience has been applied.
enum Industry
{
    healthcare,
    law,
    education,
    // ... and so on
}

/// Enumeration of core AI/ML specializations.
enum AISpecialization
{
    chatbots,
    aiAgents, // MCP/Agentic/Voice
    promptEngineering,
    ragSystems, // Retrieval-Augmented Generation
    llmTraining,
    llmDeployment,
    llmFineTuning,
}

/// Represents the high-level needs of a client project.
struct ClientNeeds
{
    Industry industry;
    string challenge;
}

/// Represents the delivered, end-to-end AI solution.
struct AISolution
{
    string conceptualModel;
    string integrationPlan;
    bool isScalable = true;
    bool isTailored = true;
}

/**
 * Defines the professional profile of an expert AI/ML Developer.
 *
 * With over 8 years of experience, this profile encapsulates a deep
 * understanding of both AI/ML and web technologies, delivering end-to-end
 * solutions from concept to scalable application.
 */
@("Senior AI/ML Developer")
struct DeveloperProfile
{
    // --- Core Attributes ---

    immutable uint yearsOfExperience = 8;
    immutable string[] webTechnologies = 
    ["REST APIs", "gRPC", "Docker", "Kubernetes", "Cloud Platforms (AWS/GCP/Azure)"];

    /// A portfolio of successful projects across multiple industries ensures
    /// the delivery of high-quality, tailored solutions.
    immutable Industry[] industryExperience = [
        Industry.healthcare,
        Industry.law,
        Industry.education
    ];

    /// Specializes in developing cutting-edge, AI-powered solutions.
    immutable AISpecialization[] coreCompetencies = [
        AISpecialization.chatbots,
        AISpecialization.aiAgents,
        AISpecialization.promptEngineering,
        AISpecialization.ragSystems,
        AISpecialization.llmTraining,
        AISpecialization.llmDeployment,
        AISpecialization.llmFineTuning
    ];

    // --- Capabilities ---

    /**
     * Provides an end-to-end solution, from conceptualizing an AI model
     * to integrating it into a practical, scalable application.
     *
     * Params:
     *   needs = A `ClientNeeds` struct detailing the industry and problem.
     *
     * Returns:
     *   An `AISolution` outlining the delivered project.
     */
    AISolution developEndToEndSolution(ClientNeeds needs) const
    {
        writefln("✅ Analyzing challenge in '%s' industry: '%s'", needs.industry, needs.challenge);
        writefln("🧠 Conceptualizing AI model and system architecture...");
        writefln("🛠️ Developing and integrating solution...");

        return AISolution(
            "Custom LLM-powered agent with RAG for domain-specific knowledge.",
            "Deploy as a containerized microservice with a RESTful API for seamless integration.",
            true, // Scalability is a core principle.
            true  // Solution is tailored to client needs.
        );
    }

    /// A generated summary of the developer's value proposition.
    @property string summary() const
    {
        return "An AI/ML developer with %d+ years of experience solving real-world challenges. "
        .format(yearsOfExperience) ~
               "Specializes in LLMs, AI Agents, and RAG systems, providing end-to-end, scalable solutions.";
    }
}

// --- Main execution block to demonstrate the profile ---
void main()
{
    // Instantiate the profile
    auto developer = DeveloperProfile();

    writeln("--- AI/ML Developer Profile ---");
    writeln("Title: ", __traits(getAttributes, DeveloperProfile)[0]);
    writeln("Experience: ", developer.yearsOfExperience, " years");
    writeln("Summary: ", developer.summary);
    writeln("\n--- Core Competencies ---");
    foreach (skill; developer.coreCompetencies)
    {
        writeln("  - ", skill);
    }

    writeln("\n--- Simulating a Project Request ---");
    auto projectRequest = ClientNeeds(
        Industry.law,
        "Automate the summarization of lengthy legal documents and case files."
    );

    auto deliveredSolution = developer.developEndToEndSolution(projectRequest);

    writeln("\n--- Solution Delivered ---");
    writefln("  Model Concept: %s", deliveredSolution.conceptualModel);
    writefln("  Integration Plan: %s", deliveredSolution.integrationPlan);
    writefln("  Is Scalable? %s", deliveredSolution.isScalable);
    writefln("  Is Tailored? %s", deliveredSolution.isTailored);
    writeln("\nProject successfully completed.");
}

// --- Unit tests to programmatically verify the profile's claims ---
unittest
{
    // This block runs at compile-time if `dmd -unittest ...` is used.
    // It serves as a "static assertion" of your skills and experience.
    auto profile = DeveloperProfile();

    assert(profile.yearsOfExperience >= 8, "Experience claim is not met.");

    // Check if key specializations are listed
    bool hasLLMCoreSkills = (AISpecialization.llmTraining in profile.coreCompetencies) &&
                            (AISpecialization.ragSystems in profile.coreCompetencies) &&
                            (AISpecialization.aiAgents in profile.coreCompetencies);
    assert(hasLLMCoreSkills, "Profile is missing key LLM-related competencies.");

    // Verify ability to handle a request from a listed industry
    auto testNeeds = ClientNeeds(Industry.healthcare, "Test");
    auto testSolution = profile.developEndToEndSolution(testNeeds);
    assert(testSolution.isScalable, "Solutions must be scalable by default.");
    assert(testSolution.isTailored, "Solutions must be tailored by default.");
}

