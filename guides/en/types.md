# ColdFusion Data Types

The type names you can use with `cfargument`, `returntype`, `cfparam` and `isValid()`. The engines don't accept the same names in each place. For SQL types used with `cfqueryparam`, see the [cfsqltype cheatsheet](/cfsqltype-cheatsheet).

✓ Supported on ACF and Lucee &nbsp; ✖ Not supported &nbsp; ◐ Partial support (one engine only, or no validation). See the notes for the type.

| Type | Arguments | Return Types | Params | isValid |
|------|:----------:|:----------:|:-------:|:-------:|
| **any** | ✓ | ✓ | ✓ | ✓ |
| **array** | ✓ | ✓ | ✓ | ✓ |
| **binary** | ✓ | ✓ | ✓ | ✓ |
| **boolean** | ✓ | ✓ | ✓ | ✓ |
| **date** | ✓ | ✓ | ✓ | ✓ |
| **function** | ✓ | ✓ | ✓ | ✓ |
| **guid** | ✓ | ✓ | ✓ | ✓ |
| **numeric** | ✓ | ✓ | ✓ | ✓ |
| **query** | ✓ | ✓ | ✓ | ✓ |
| **string** | ✓ | ✓ | ✓ | ✓ |
| **struct** | ✓ | ✓ | ✓ | ✓ |
| **uuid** | ✓ | ✓ | ✓ | ✓ |
| **variableName** | ✓ | ✓ | ✓ | ✓ |
| **xml** | ✓ | ✓ | ✓ | ✓ |
| **component** | ✓ | ✓ | ◐ | ✓ |
| **string[]** | ✓ | ✓ | ◐ | ✖ |
| **creditcard** | ◐ | ✖ | ✓ | ✓ |
| **email** | ◐ | ✖ | ✓ | ✓ |
| **eurodate** | ◐ | ◐ | ✓ | ✓ |
| **float** | ◐ | ✖ | ✓ | ✓ |
| **integer** | ◐ | ✖ | ✓ | ✓ |
| **range** | ✖ | ✖ | ✓ | ✓ |
| **regex** | ✖ | ✖ | ✓ | ✓ |
| **social_security_number** | ◐ | ✖ | ✓ | ✓ |
| **ssn** | ◐ | ✖ | ✓ | ✓ |
| **telephone** | ◐ | ✖ | ✓ | ✓ |
| **time** | ◐ | ◐ | ✓ | ✓ |
| **usdate** | ◐ | ✖ | ✓ | ✓ |
| **zipcode** | ◐ | ✖ | ✓ | ✓ |
| **url** | ◐ | ✖ | ◐ | ✓ |
| **void** | ◐ | ✓ | ◐ | ✖ |
| **regular_expression** | ✖ | ✖ | ◐ | ✓ |
| **bool** | ◐ | ✖ | ◐ | ✖ |
| **datetime** | ◐ | ◐ | ◐ | ◐ |
| **number** | ◐ | ◐ | ◐ | ◐ |
| **object** | ◐ | ◐ | ◐ | ✖ |
| **timespan** | ◐ | ◐ | ◐ | ✖ |
| **char** | ✖ | ✖ | ◐ | ✖ |
| **double** | ✖ | ✖ | ◐ | ◐ |
| **int** | ✖ | ✖ | ◐ | ✖ |
| **long** | ✖ | ✖ | ◐ | ✖ |
| **node** | ✖ | ✖ | ◐ | ◐ |
| **short** | ✖ | ✖ | ◐ | ✖ |

Tested on ColdFusion 2021, 2023 and 2025 (all three behave the same) and on Lucee 5.4 and 7.

On ACF, an unknown type in `cfargument` or `returntype` is treated as a component name. The value then fails with an error like "is not of type timespan".

## any

Accepts any value.

## array

An array.

## binary

A binary value, such as the result of `charsetDecode()` or `fileReadBinary()`.

## bool

Lucee only. An alias for `boolean` that works in `cfparam` and `cfargument`. As a `returntype` Lucee rejects a boolean value, so use `boolean` instead.

## boolean

`true`, `false`, `yes`, `no`, or a number.

## char

Lucee only, and only in `cfparam`.

## component

A component instance. ACF does not accept `component` as a `cfparam` type, but Lucee does.

## creditcard

A 13 to 16 digit number that passes the mod10 check. ACF validates it as a `cfargument` type. Lucee rejects valid values as an argument type.

## date

A date/time value.

## datetime

Lucee only. An alias for `date`.

## double

Lucee only, in `cfparam` and `isValid()`. Use `numeric` instead.

## email

An email address. ACF validates it as a `cfargument` type, but Lucee does not support it there.

## eurodate

A date in day/month/year order, such as `25/12/2024`. ACF accepts it as a `cfargument` type, and Lucee accepts it as a `returntype`.

## float

A number that may have a decimal part. ACF accepts it as a `cfargument` type. Lucee rejects numbers when it is used as an argument or return type.

## function

A function or closure.

## guid

A Microsoft-style GUID, `XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX`, where X is a hexadecimal digit.

## int

Lucee only, and only in `cfparam`. Use `integer` instead.

## integer

A whole number. ACF validates it as a `cfargument` type, but neither engine accepts it as a `returntype`, so use `numeric` there.

## long

Lucee only, and only in `cfparam`.

## node

Lucee only, in `cfparam` and `isValid()`. An XML node.

## number

Lucee only. An alias for `numeric`.

## numeric

A number.

## object

Lucee only. Like `any`, it accepts any value. Lucee 7 `isValid("object", value)` returns `false`, and Lucee 5 throws an error.

## query

A query object.

## range

A number between the `min` and `max` attributes of `cfparam`. Also works in `isValid("range", value, min, max)`.

## regex

A string that matches the `pattern` attribute of `cfparam`. Also works in `isValid("regex", value, pattern)`. Both engines require the pattern to match the whole value.

## regular_expression

An alias for `regex`. ACF accepts it in `isValid()` but not in `cfparam`. Lucee accepts it in both.

## short

Lucee only, and only in `cfparam`.

## social_security_number

An alias for `ssn`.

## ssn

A U.S. social security number, such as `123-45-6789`. ACF accepts it as a `cfargument` type, but Lucee does not.

## string

A simple value.

## string[]

An array of strings. ACF and Lucee support typed arrays as `cfargument` types and as a `returntype`. Only Lucee accepts them in `cfparam`.

## struct

A structure.

## telephone

A U.S. telephone number, such as `617-555-1212`. ACF accepts it as a `cfargument` type, but Lucee does not.

## time

A date/time value. Lucee accepts it as a `cfargument` type and as a `returntype`, but ACF does not.

## timespan

Lucee only. A value from `createTimeSpan()`, or a number of days. Works in `cfparam`, `cfargument` and `returntype`, but not in `isValid()`. Use `numeric` for code that also runs on ACF.

## url

A URL, such as `http://example.com`. ACF validates it as a `cfparam` and `cfargument` type. Lucee accepts it in `cfparam` but does not reject invalid values, and does not support it as a `cfargument` type.

## usdate

A date in month/day/year order, such as `12/25/2024`. ACF accepts it as a `cfargument` type, but Lucee does not.

## uuid

A ColdFusion UUID, as returned by `createUUID()`, in the form `XXXXXXXX-XXXX-XXXX-XXXXXXXXXXXXXXXX`.

## variableName

A string that is a valid CFML variable name.

## void

A `returntype` for functions that return nothing. Lucee also accepts `void` in `cfparam` and `cfargument`, where only an empty value passes.

## xml

An XML document object.

## zipcode

A U.S. ZIP code in 5 or 9 digit format. ACF accepts it as a `cfargument` type, but Lucee does not.
