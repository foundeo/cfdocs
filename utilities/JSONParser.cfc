component {

    variables.regex = {
        object_start: '\s*\{',
        object_end: '\s*[\},]',
        object_key: '\s*(?<token>""|"(?:[^"]|\\")*[^\\]")\s*:',
        array_start: '\s*\[',
        array_end: '\s*[\],]',
        element: '\s*(?<token>""|"(?:[^"\\]|\\.)+"|[^\s",\{\}\[\]]+)',
        newline: '\r?\n|$'
    };
    variables.patterns = { };

    public any function init() {
        var patternClass = createObject( 'java', 'java.util.regex.Pattern' );
        for ( var regex_name in regex ) {
            variables.patterns[ regex_name ] = patternClass.compile( regex[ regex_name ] );
        }
        return this;
    }

    public struct function parse( src, pos = 0 ) {
        var parsed = parseObject( src, pos );
        if ( !isNull( parsed ) ) return parsed;
        var parsed = parseArray( src, pos );
        if ( !isNull( parsed ) ) return parsed;
        var parsed = parseElement( src, pos );
        if ( !isNull( parsed ) ) return parsed;
        invalidJSON( src, pos );
    }

    private any function parseObject( src, pos ) {
        var matcher = patterns.object_start.matcher( src ).region( pos, len( src ) );
        if ( !matcher.lookingAt() ) return;

        var parsed = {
            type: 'object',
            elements: [ ]
        };

        pos = matcher.end();

        var object_end_matcher = patterns.object_end.matcher( src );
        var looking_for_element = true;

        while ( true ) {
            object_end_matcher.region( pos, len( src ) );
            if ( object_end_matcher.lookingAt() ) {
                if ( src.mid( object_end_matcher.end(), 1 ) == '}' ) {
                    parsed.end = object_end_matcher.end();
                    break;
                }
                if ( looking_for_element ) invalidJSON( src, pos );
                looking_for_element = true;
                pos = object_end_matcher.end();
            }

            if ( looking_for_element ) {
                var keyvalue = parseKeyValue( src, pos );
                if ( !isNull( keyvalue ) ) {
                    parsed.elements.append( keyvalue );
                    looking_for_element = false;
                    pos = keyvalue.end;
                    continue;
                }
            }

            invalidJSON( src, pos );
        }

        return parsed;
    }

    private any function parseArray( src, pos ) {
        var matcher = patterns.array_start.matcher( src ).region( pos, len( src ) );
        if ( !matcher.lookingAt() ) return;

        var parsed = {
            type: 'array',
            elements: [ ]
        };

        pos = matcher.end();

        var array_end_matcher = patterns.array_end.matcher( src );
        var looking_for_element = true;

        while ( true ) {
            array_end_matcher.region( pos, len( src ) );
            if ( array_end_matcher.lookingAt() ) {
                parsed.end = array_end_matcher.end();
                if ( src.mid( array_end_matcher.end(), 1 ) == ']' ) break;
                if ( looking_for_element ) invalidJSON( src, pos );
                looking_for_element = true;
                pos = parsed.end;
            }
            if ( looking_for_element ) {
                var value = parse( src, pos );
                if ( !isNull( value ) ) {
                    parsed.elements.append( value );
                    pos = value.end;
                    looking_for_element = false;
                    continue;
                }
            }

            invalidJSON( src, pos );
        }

        return parsed;
    }

    private any function parseElement( src, pos ) {
        var matcher = patterns.element.matcher( src ).region( pos, len( src ) );
        if ( matcher.lookingAt() ) {
            return {
                type: 'element',
                start: matcher.start( 'token' ),
                end: matcher.end( 'token' )
            };
        }
    }

    private any function parseKeyValue( src, pos ) {
        var parsed = { type: 'keyvalue' };

        // key
        var matcher = patterns.object_key.matcher( src ).region( pos, len( src ) );
        if ( !matcher.lookingAt() ) return;

        parsed.key = {
            type: 'element',
            start: matcher.start( 'token' ),
            end: matcher.end( 'token' )
        };

        pos = matcher.end();

        // value
        parsed.value = parse( src, pos );
        if ( isNull( parsed.value ) ) invalidJSON( src, pos );

        parsed.start = parsed.key.start;
        parsed.end = parsed.value.end;
        return parsed;
    }

    private void function invalidJSON( src, pos ) {
        throw( 'Unable to parse JSON on line #lineFromChar( src, pos )#' );
    }

    private numeric function lineFromChar( src, pos ) {
        var lineNum = 1;
        var matcher = patterns.newline.matcher( src );
        while ( matcher.find() ) {
            if ( matcher.end() >= pos ) break;
            lineNum++;
        }
        return lineNum;
    }

}