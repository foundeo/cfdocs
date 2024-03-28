component accessors="true" {

    property ANSIDefaults;

    function init() {
        setANSIDefaults( {
            'constant' : chr( 27 ) & '[38;5;0m',
            'key' : chr( 27 ) & '[38;5;0m',
            'number' : chr( 27 ) & '[38;5;0m',
            'string' : chr( 27 ) & '[38;5;0m'
        } );
        return this;
    }

    function wrap( str, type, colors ) {
        var code = 0;

        if ( type == 'key' ) {
            code = colors.key;
        } else if ( left( str, 1 ) == '"' ) {
            code = colors.string;
        } else if ( len( str ) > 3 && arrayFind( [ 'true', 'false', 'null' ], str ) ) {
            code = colors.constant;
        } else {
            code = colors.number;
        }

        if ( code.len() ) {
            return code & str & ANSIReset();
        }
        return str;
    }

    private function ANSIReset() {
        return chr( 27 ) & '[0m';
    }

}