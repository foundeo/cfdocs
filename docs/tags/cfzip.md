# cfzip

Manipulates ZIP and JavaTM Archive (JAR) files.
 In addition to the basic zip and unzip functions, use the cfzip tag to delete
 entries from an archive, filter files, read files in binary format, list the
 contents of an archive, and specify an entrypath used in an executable JAR file.

### Syntax

```html
<cfzip>
```

### Script Syntax ACF11+, Lucee, Railo 4.2+

```javascript
cfzip();
```

## Attribute Reference

| Name | Type | Required | Default | Description |
| --- | --- | --- | --- | --- |
| action | string | No | zip | The action to take. Must be one of the following:<br /> delete<br /> list<br /> read<br /> readBinary<br /> unzip<br /> zip<br /> If you do not specify an action, ColdFusion<br /> applies the default action, zip. (optional) |
| charset | string | No |  | The character set used to translate the ZIP or JAR<br /> entry into a text string. Examples of character sets are:<br /> JIS<br /> RFC1345<br /> UTF-16 (optional, default=encoding of the host machine) |
| destination | string | No |  | Destination directory where the ZIP or JAR file is extracted. (optional) |
| entrypath | string | No |  | Pathname on which the action is performed. (optional) |
| file | string | No |  | Absolute pathname of the file on which the action is performed.<br /> For example, the full pathname of the ZIP file: c:\temp\log.zip.<br /> If you do not specify the full pathname (for example, file="log.zip"),<br /> ColdFusion creates the file in a temporary directory. You can use the<br /> GetTempDirectory function to access the ZIP or JAR file. (required) |
| filter | string | No |  | File filter applied to the action. The action<br /> applies to all files in the pathname specified that match the filter. (optional) |
| name | string | No |  | Record set name in which the result of the list action is stored.<br /> The record set columns are:<br /> name: filename of the entry in the JAR file. For example, if the entry is<br /> help/docs/index.htm, the name is index.htm.<br /> directory: directory containing the entry. For the example above, the<br /> directory is help/docs. You can obtain the full entry name by concatenating<br /> directory and name. If an entry is at the root level, the directory is empty ('').<br /> size: uncompressed size of the entry, in bytes.<br /> compressedSize: compressed size of the entry, in bytes.<br /> type: type of entry (directory or file).<br /> dateLastModified: last modified date of the entry, cfdate object.<br /> comment: any comment, if present, for the entry.<br /> crc: crc-32 checksum of the uncompressed entry data. (required) |
| overwrite | boolean | No |  | unzip: Specifies whether to overwrite the extracted files:<br /> yes: if the extracted file already exists at the destination specified,<br /> the file is overwritten.<br /> no: if the extracted file already exists at the destination specified,<br /> the file is not overwritten and that entry is not extracted. The remaining<br /> entries are extracted.<br /> zip: Specifies whether to overwrite the contents of a ZIP or JAR file:<br /> yes: overwrites all of the content in the ZIP or JAR file if it exists.<br /> no: updates existing entries and adds new entries to the ZIP or JAR file<br /> if it exists. (optional, default=no) |
| password | string | No |  | The password to be used for the archive when action is zip. (optional) |
| prefix | string | No |  | String added as a prefix to the ZIP or JAR entry.<br /> The string is the name of a subdirectory in which the<br /> entries are added. (optional) |
| recurse | boolean | No |  | Specifies whether the action<br /> applies to subdirectories:<br /> yes: includes subdirectories.<br /> no: does not include subdirectories. (optional, default=yes) |
| showDirectory | boolean | No |  | yes: lists the directories.<br /> no: does not list directories. (optional, default= no) |
| source | string | No |  | Source directory to be zipped. Not required<br /> if cfzipparam is specified. (required) |
| storePath | boolean | No |  | zip: Specifies whether pathnames are stored in the ZIP or JAR file:<br /> yes: pathnames of entries are stored in the ZIP or JAR file.<br /> no: pathnames of the entries are not stored in the ZIP or JAR file.<br /> All the files are placed at the root level. In case of a name conflict,<br /> the last file in the iteration is added.<br /> unzip: Specifies whether files are stored at the entrypath:<br /> yes: the files are extracted to the entrypath.<br /> no: the entrypath is ignored and all the files are extracted<br /> at the root level. (optional, default= yes) |
| variable | string | No |  | Variable in which the read content is stored. (required) |

## Extract / Unzip a zip file into a folder

Uses `action="unzip"` in the cfzip tag to unzip into the temp directory.

```html
<cfzip action="unzip" destination="#getTempDirectory()#" file="#zipFilePath#">
```

## Extract / Unzip a zip file into a folder (Script Syntax)

Uses `action="unzip"` in the cfzip tag to unzip into the temp directory.

```html
cfzip(action="unzip", file="zipFileName", destination=getTempDirectory());
```

## List contents of a zip folder (Script Syntax)

Uses `action="list"` in the cfzip tag to list the zip contents.

```html
cfzip(action="list", file="zipFileName", name="zipList");
```
