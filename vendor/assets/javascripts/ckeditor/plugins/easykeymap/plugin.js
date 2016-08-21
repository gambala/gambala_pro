/**
 * This work is mine, and yours. You can modify it as you wish.
 * @Author: Roni Saha<roni.cse@gmail.com>
 *
 * This source file is subject to the MIT license that is bundled
 * with this source code in the file LICENSE.
 */

CKEDITOR.plugins.add('easykeymap',
    {
        requires : ['wysiwygarea'],
        init: function (editor) {

            var keyMaps = CKEDITOR.tools.extend({}, editor.config.easykeymaps || {}, true);

            function isRegisteredKeystroke(code) {
                if(typeof editor.keystrokeHandler.keystrokes[code] != 'undefined') {
                    console.warn("the keystroke : " + code + " is being attached to another event")
                    return true;
                }

                return false;
            }

            function getMappedCharacter(code) {
                return typeof keyMaps[code] != 'undefined' ? keyMaps[code] : false;
            }

            editor.on( 'key', function( event ) {
                var mappedCode = getMappedCharacter(event.data.keyCode);
                if (mappedCode !== false && !isRegisteredKeystroke(event.data.keyCode)) {

                    event.cancel();

                    if(typeof mappedCode == 'function') {
                        return mappedCode.call(editor, editor);
                    }

                    editor.insertText(mappedCode);
                }
            } );
        }
    });