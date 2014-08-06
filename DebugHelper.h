//
//  DebugHelper.h
//
//  Created by hara on 2013/11/22.
//

#ifndef DebugHelper_h
#define DebugHelper_h

/** デバッグ時のみ必要となる定義類
 *  デバッグ時のみ「#define DEBUG」があることを前提としている
 */

/// ログ出力
#ifdef DEBUG
#define DLOG(log, ...) NSLog((@"\n%s (%d)\n" log), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define DLOG(...)
#endif

/// ログ出力（アラート）
#ifdef DEBUG
#define ULOG(log, ...)  {[[[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"%s (%d)", __PRETTY_FUNCTION__, __LINE__] message:[NSString stringWithFormat:log, ##__VA_ARGS__]  delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil] show];}
#else
#define ULOG(...)
#endif

#endif // DebugHelper_h
