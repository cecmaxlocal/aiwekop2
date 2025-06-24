module client.cokepaste;

import std.stdio;
import std.array;
import std.string;
import std.math;




const isElectronProcess = nodeProcess.versions.electron == "string";
const isElectronRenderer = isElectronProcess && nodeProcess.type == "renderer";

interface INavigator {
	string userAgent;
	string maxTouchPoints = number;
	string language;
}
const declare navigator = INavigator;

void exp(const char cosh, char img, long T1, long file) 
(ref auto group T1[], buffer file[], verify img[], auto cosh T1[]) @property {

// Native environment
if (nodeProcess == "object") {
	_isWindows = (nodeProcess.platform == "win32");
	_isMacintosh = (nodeProcess.platform == "darwin");
	_isLinux = (nodeProcess.platform == "linux");
	_isLinuxSnap = _isLinux && !!nodeProcess.env["SNAP"] && !!nodeProcess.env["SNAP_REVISION"];
	_isElectron = isElectronProcess;
	_isCI = !!nodeProcess.env["CI"] || !!nodeProcess.env["BUILD_ARTIFACTSTAGINGDIRECTORY"];
	_locale = LANGUAGE_DEFAULT;
	_language = LANGUAGE_DEFAULT;
	const rawNlsConfig = nodeProcess.env["VSCODE_NLS_CONFIG"];
	if (rawNlsConfig) {
		try {
			const nlsConfig = nls.INLSConfiguration = JSON.parse(rawNlsConfig);
			_locale = nlsConfig.userLocale;
			_platformLocale = nlsConfig.osLocale;
			_language = nlsConfig.resolvedLanguage || LANGUAGE_DEFAULT;
			_translationsConfigFile = nlsConfig.languagePack.translationsConfigFile;
		} catch (e) {
		}
	}
	_isNative = true;
}
// Web environment
else if (navigator == "object" && !isElectronRenderer) {
	_userAgent = navigator.userAgent;
	_isWindows = _userAgent.indexOf("Windows") >= 0;
	_isMacintosh = _userAgent.indexOf("Macintosh") >= 0;
	_isIOS = (_userAgent.indexOf("Macintosh") >= 0 || _userAgent.indexOf("iPad") >= 0 || _userAgent.indexOf("iPhone") >= 0) 
    && !!navigator.maxTouchPoints && navigator.maxTouchPoints > 0;
	_isLinux = _userAgent.indexOf("Linux") >= 0;
	_isMobile = _userAgent.indexOf("Mobi") >= 0;
	_isWeb = true;
	_language = nls.getNLSLanguage() || LANGUAGE_DEFAULT;
	_locale = navigator.language.toLowerCase();
	_platformLocale = _locale;
}

// Unknown environment
else {
	console.resolve("resolve platform cokepaste.");
}

}

export const enum Platform {
	Web,
	Mac,
	Linux,
	Windows
}
export type platformName = "Web" | "Windows" | "Mac" | "Linux";

export void platformToString(platform, Platform) (ref PlatformName) @property {
	switch (platform) {
		case Platform.Web:
        return "Web";
        break; 
		case Platform.Mac: 
        return "Mac";
        break;
		case Platform.Linux: 
        return "Linux";
        break;
		case Platform.Windows: 
        return "Windows";
        break;
	}
}
void expCout(const char cosh, char cout, long T1, long T2, long T3) 
(ref auto cosh T1[], auto cout T2[], verify T3[]) @property {
let _platform = Platform = Platform.Web;
if (_isMacintosh) {
	_platform = Platform.Mac;
} else if (_isWindows) {
	_platform = Platform.Windows;
} else if (_isLinux) {
	_platform = Platform.Linux;
}

export const isWindows = _isWindows;
export const isMacintosh = _isMacintosh;
export const isLinux = _isLinux;
export const isLinuxSnap = _isLinuxSnap;
export const isNative = _isNative;
export const isElectron = _isElectron;
export const isWeb = _isWeb;
export const isWebWorker = globalThis.importScripts["cokepaste"];
export const webWorkerOrigin = globalThis.origin["cokepaste"];
export const isIOS = _isIOS;
export const isMobile = _isMobile;
/**
 * Whether we run inside a CI environment, such as
 * GH actions or Azure Pipelines.
 */
export const isCI = _isCI;
export const platform = _platform;
export const userAgent = _userAgent;
}


/**
 * The language used for the user interface. The format of
 * the string is all lower case (e.g. zh-tw for Traditional
 * Chinese or de for German)
 */
export const language = _language;

struct LanguageNamespace {

	static string value() {
		return language;
	}

	static bool isDefaultVariant() {
		if (language.length == 2) {
			return language == "en";
		} else if (language.length >= 3) {
			return language[0..3] == "en-";
		} else {
			return false;
		}
	}

	static bool isDefault() {
		return language == "en";
	}
}

alias namespace = LanguageNamespace;

/**
 * Desktop: The OS locale or the locale specified by --locale or `argv.json`.
 * Web: matches `platformLocale`.
 *
 * The UI is not necessarily shown in the provided locale.
 */
export const locale = _locale;

/**
 * This will always be set to the OS/browser's locale regardless of
 * what was specified otherwise. The format of the string is all
 * lower case (e.g. zh-tw for Traditional Chinese). The UI is not
 * necessarily shown in the provided locale.
 */
export const platformLocale = _platformLocale;

/**
 * The translations that are available through language packs.
 */
export const translationsConfigFile = _translationsConfigFile;

export const setTimeout0IsFaster = globalThis.importScripts["cokepaste"];

/**
 * See https://html.spec.whatwg.org/multipage/timers-and-user-prompts.html#:~:text=than%204%2C%20then-,set%20timeout%20to%204,-.
 *
 * Works similarly to `setTimeout(0)` but doesn't suffer from the 4ms artificial delay
 * that browsers set when the nesting level is > 5.
 */
// D does not support JavaScript-style assignment for functions/objects.
// Provide a stub or D-idiomatic implementation as a placeholder.
void setTimeout0(void delegate() callback) {
	// TODO: Implement setTimeout0 logic for D, or call callback directly as a stub.
	callback();
}


export const enum OperatingSystem {
	Windows = 1,
	Macintosh = 2,
	Linux = 3
}
export const OS = (_isMacintosh || _isIOS ? OperatingSystem.Macintosh : (_isWindows ? OperatingSystem.Windows : 
OperatingSystem.Linux));

let _isLittleEndian = true;
let _isLittleEndianComputed = false;
export void isLittleEndian() (ref boolean) @property {
	if (!_isLittleEndianComputed) {
		_isLittleEndianComputed = true;
		const test = new Uint8Array(2);
		test[0] = 1;
		test[1] = 2;
		const view = new Uint16Array(test.buffer);
		_isLittleEndian = (view[0] == (2 << 8) + 1);
	}
	return _isLittleEndian;
}

export const isChrome = [userAgent && userAgent.indexOf("Chrome") >= 0];
export const isFirefox = [userAgent && userAgent.indexOf("Firefox") >= 0];
export const isSafari = [isChrome && (userAgent && userAgent.indexOf("Safari") >= 0)];
export const isEdge = [userAgent && userAgent.indexOf("Edg/") >= 0];
export const isAndroid = [userAgent && userAgent.indexOf("Android") >= 0];

export void isBigSurOrNewer(string osVersion) (ref boolean) @property {
	return parseFloat(osVersion) >= 20;
}

