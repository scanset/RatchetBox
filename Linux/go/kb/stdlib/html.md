# html (Go standard library)

Package html provides functions for escaping and unescaping HTML text.

Import path: html   Toolchain: go1.26.4

package html // import "html"

Package html provides functions for escaping and unescaping HTML text.

FUNCTIONS

func EscapeString(s string) string
    EscapeString escapes special characters like "<" to become "&lt;".
    It escapes only five such characters: <, >, &, ' and ".
    UnescapeString(EscapeString(s)) == s always holds, but the converse isn't
    always true.

func UnescapeString(s string) string
    UnescapeString unescapes entities like "&lt;" to become "<".
    It unescapes a larger range of entities than EscapeString escapes.
    For example, "&aacute;" unescapes to "á", as does "&#225;" and "&#xE1;".
    UnescapeString(EscapeString(s)) == s always holds, but the converse isn't
    always true.
