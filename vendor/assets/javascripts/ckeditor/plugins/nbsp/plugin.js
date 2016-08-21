/**
 * @file insert Non-Breaking SPace for CKEditor
 * Create a command and enable the Ctrl+Space shortcut to insert a non-breaking space in CKEditor
 *
 */

CKEDITOR.plugins.add( 'nbsp',
{
	init : function( editor )
	{
		// Insert &nbsp; if Ctrl+Space is pressed:
		editor.addCommand( 'insertNbsp', {
			exec: function( editor ) {
				editor.insertHtml( '&nbsp;' );
			}
		});
		editor.setKeystroke( CKEDITOR.CTRL + 32 /* space */, 'insertNbsp' );
	}

} );
