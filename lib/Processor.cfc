/**
 * Ortus Markdown Module
 * Copyright 2013 Ortus Solutions, Corp
 * www.ortussolutions.com
 * ---
 * @author Luis Majano
 * Convert markdown to HTML via the MarkdownJ Java library
 */
component accessors=true singleton {

	// Emoji Support
	property name="emojiService" inject="EmojiService@cbemoji";

	/**
	 * The internal parser
	 */
	property name="parser";

	/**
	 * The internal renderer
	 */
	property name="renderer";

	/**
	 * Constructor
	 *
	 * @javaLoader The javaloader class
	 * @javaLoader.inject loader@cbjavaloader
	 * @options The module options
	 * @options.inject coldbox:modulesettings:cbmarkdown
	 */
	function init(){
		variables.settings = {
			// Looks for www or emails and converts them to links
			autoLinkUrls             : true,
			// Creates anchor links for headings
			anchorLinks              : true,
			// Set the anchor id
			anchorSetId              : true,
			// Set the anchor id but also the name
			achorSetName             : true,
			// Do we create the anchor for the full header or just before it. True is wrap, false is just create anchor tag
			anchorWrapText           : true,
			// The class(es) to apply to the anchor
			anchorClass              : "headinglink",
			// raw HTML prefix. Added before heading text, wrapped or unwrapped
			anchorPrefix             : " ",
			// raw HTML suffix. Added before heading text, wrapped or unwrapped
			anchorSuffix             : "",
			// Enable youtube embedded link transformer
			enableYouTubeTransformer : false,
			// Table options
			tableOptions             : {
				// Treat consecutive pipes at the end of a column as defining spanning column.
				columnSpans                 : true,
				// Whether table body columns should be at least the number or header columns.
				appendMissingColumns        : true,
				// Whether to discard body columns that are beyond what is defined in the header
				discardExtraColumns         : true,
				// Class name to use on tables
				className                   : "table table-sm table-striped table-bordered",
				// When true only tables whose header lines contain the same number of columns as the separator line will be recognized
				headerSeparationColumnMatch : true
			}
		};
		// store references
		variables.StaticParser = createObject("java","com.vladsch.flexmark.parser.Parser" );
		variables.HtmlRenderer = createObject("java","com.vladsch.flexmark.html.HtmlRenderer" );

		var parserOptions        = createOptions( variables.settings );
		variables.parser         = StaticParser.builder( parserOptions ).build();
		variables.renderer       = HtmlRenderer.builder( parserOptions ).build();

		return this;
	}

	/**
	 * Convert markdown to HTML
	 * @txt The markdown text to convert
	 */
	function toHTML( required txt ){
		var document = variables.parser.parse( trim( arguments.txt ) );
		return trim( variables.renderer.render( document ) );
	}


	/**
	 * Create a parser options object for the FlexMark parser.
	 *
	 * @options A struct of options for the parser.
	 *
	 * @return  A parser options object.
	 */
	private function createOptions( required struct options ){
		var staticTableExtension = createObject("java","com.vladsch.flexmark.ext.tables.TablesExtension" );
		var anchorLinkExtension  = createObject("java","com.vladsch.flexmark.ext.anchorlink.AnchorLinkExtension" );

		var extensionsToLoad = [
			staticTableExtension.create(),
			createObject("java","com.vladsch.flexmark.ext.gfm.strikethrough.StrikethroughSubscriptExtension" ).create(),
			createObject("java","com.vladsch.flexmark.ext.gfm.tasklist.TaskListExtension" ).create(),
			createObject("java","com.vladsch.flexmark.ext.toc.TocExtension" ).create()
		];

		// autoLinkUrls
		if ( arguments.options.autoLinkUrls ) {
			extensionsToLoad.append(
				createObject("java","com.vladsch.flexmark.ext.autolink.AutolinkExtension" ).create()
			);
		}
		// AnchorLinks
		if ( arguments.options.anchorLinks ) {
			extensionsToLoad.append( anchorLinkExtension.create() );
		}
		// Youtube Transformer
		if ( arguments.options.enableYouTubeTransformer ) {
			extensionsToLoad.append(
				createObject("java","com.vladsch.flexmark.ext.youtube.embedded.YouTubeLinkExtension" ).create()
			);
		}

		return createObject("java", "com.vladsch.flexmark.util.data.MutableDataSet" )
			.init()
			// Autolink + Anchor Link Options
			.set(
				variables.StaticParser.WWW_AUTO_LINK_ELEMENT,
				javacast(
					"boolean",
					arguments.options.autoLinkUrls
				)
			)
			.set(
				anchorLinkExtension.ANCHORLINKS_SET_ID,
				javacast(
					"boolean",
					arguments.options.anchorSetId
				)
			)
			.set(
				anchorLinkExtension.ANCHORLINKS_SET_NAME,
				javacast(
					"boolean",
					arguments.options.achorSetName
				)
			)
			.set(
				anchorLinkExtension.ANCHORLINKS_WRAP_TEXT,
				javacast(
					"boolean",
					arguments.options.anchorWrapText
				)
			)
			.set(
				anchorLinkExtension.ANCHORLINKS_ANCHOR_CLASS,
				arguments.options.anchorClass
			)
			.set(
				anchorLinkExtension.ANCHORLINKS_TEXT_PREFIX,
				arguments.options.anchorPrefix
			)
			.set(
				anchorLinkExtension.ANCHORLINKS_TEXT_SUFFIX,
				arguments.options.anchorSuffix
			)
			// Add Table Options
			.set(
				staticTableExtension.COLUMN_SPANS,
				javacast(
					"boolean",
					arguments.options.tableOptions.columnSpans
				)
			)
			.set(
				staticTableExtension.APPEND_MISSING_COLUMNS,
				javacast(
					"boolean",
					arguments.options.tableOptions.appendMissingColumns
				)
			)
			.set(
				staticTableExtension.DISCARD_EXTRA_COLUMNS,
				javacast(
					"boolean",
					arguments.options.tableOptions.discardExtraColumns
				)
			)
			.set(
				staticTableExtension.CLASS_NAME,
				arguments.options.tableOptions.className
			)
			.set(
				staticTableExtension.HEADER_SEPARATOR_COLUMN_MATCH,
				javacast(
					"boolean",
					arguments.options.tableOptions.headerSeparationColumnMatch
				)
			)
			// Load extensions
			.set(
				variables.StaticParser.EXTENSIONS,
				extensionsToLoad
			);
	}

}
