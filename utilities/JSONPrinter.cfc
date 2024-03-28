component accessors="true" {

    public any function init() {
        var osName = createObject( 'java', 'java.lang.System' ).getProperty( 'os.name' );
        variables.ANSIPrint = createObject('component','ANSIPrint').init();
        variables.parser = createObject('component','JSONParser').init();
        variables.defaultLineEnding = osName.findNoCase( 'windows' ) ? chr( 13 ) & chr( 10 ) : chr( 10 );
        variables.defaultIndent = '    ';
        return this;
    }

    /**
     * Pretty JSON
     * @json A string containing JSON, or a complex value that can be serialized to JSON
     * @indent String to use for indenting lines.  Defaults to four spaces.
     * @lineEnding String to use for line endings.  Defaults to CRLF on Windows and LF on *nix
     * @spaceAfterColon Add space after each colon like "value": true instead of"value":true
     * @sortKeys Specify a sort type to sort the keys of json objects: "text" or "textnocase"
     * @ansiColors A struct of ANSI color codes. If supplied, output will be ANSI encoded. Struct keys are "constant", "key", "number", and "string" and values are valid ANSI escape sequence such as chr( 27 ) & '[38;5;52m'.
     **/
    public string function formatJson(
        required any json,
        string indent = defaultIndent,
        string lineEnding = defaultLineEnding,
        boolean spaceAfterColon = false,
        string sortKeys = '',
        struct ansiColors = {}
    ) {
        if ( !isSimpleValue( json ) ) {
            json = serializeJSON( json );
        }
        var parsedJSON = parser.parse( json );
        var settings = {
            indent: indent,
            lineEnding: lineEnding,
            colon: spaceAfterColon ? ': ' : ':',
            sortKeys: sortKeys,
            ansi: !ansiColors.isEmpty(),
            ansiColors: ansiColors
        };
        structAppend( settings.ansiColors, ANSIPrint.getANSIDefaults(), false );
        return printByType( json, parsedJSON, settings );
    }

    private string function printByType( json, parsedJSON, settings, indent='' ) {
        switch ( parsedJSON.type ) {
            case 'object':
                return printObject( json, parsedJSON, settings, indent );
            case 'array':
                return printArray( json, parsedJSON, settings, indent );
            case 'element':
                return printElement( json, parsedJSON, 'value', settings );
        }
    }

    private string function printElement( json, parsedJSON, type, settings ) {
        var elem = mid( json, parsedJSON.start + 1, parsedJSON.end - parsedJSON.start );
        return settings.ansi ? ANSIPrint.wrap( elem, type, settings.ansiColors ) : elem;
    }

    private string function printArray( json, parsedJSON, settings, indent ) {
        if ( !parsedJSON.elements.len() ) return '[]';
        var nested_indent = indent & settings.indent;
        var printed_elements = parsedJSON.elements
            .map( function( e ) {
                return nested_indent & printByType( json, e, settings, nested_indent );
            } )
            .toList( ',' & settings.lineEnding );

        return '[' & settings.lineEnding & printed_elements & settings.lineEnding & indent & ']';
    }

    private string function printObject( json, parsedJSON, settings, indent ) {
        if ( !parsedJSON.elements.len() ) return '{}';
        var nested_indent = indent & settings.indent;
        var elementData = parsedJSON.elements.reduce( function( r, e ) {
            var key = printElement( json, e.key, 'key', settings );
            r.keys.append( key );
            r.valuesByKey[ key ] = printByType(
                json,
                e.value,
                settings,
                nested_indent
            );
            return r;
        }, { keys: [ ], valuesByKey: { } } );

        if ( len( settings.sortKeys ) ) {
            elementData.keys.sort( settings.sortKeys );
        }

        var printed_elements = elementData.keys.map( function( k ) {
            return nested_indent & k & settings.colon & elementData.valuesByKey[ k ];
        } )
            .toList( ',' & settings.lineEnding );

        return '{' & settings.lineEnding & printed_elements & settings.lineEnding & indent & '}';
    }
}