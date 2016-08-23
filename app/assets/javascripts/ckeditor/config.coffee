CKEDITOR.editorConfig = (config) ->
  CORE_PLUGINS = [
    'a11yhelp',            # dialog
    'basicstyles',
    'blockquote',
    'button',
    'clipboard',           # dialog
    'colordialog',         # dialog
    'contextmenu',         # menu
    'dialog',              # dialogui
    'dialogui',
    'enterkey',
    'entities',
    'fakeobjects',
    'filebrowser',         # popup
    'floatpanel',          # panel
    'format',              # richcombo
    'horizontalrule',
    'htmlwriter',
    'image',               # dialog
    'indent',
    'indentlist',          # indent
    'link',                # dialog fakeobjects
    'list',                # indentlist
    'listblock',           # panel
    'magicline',
    'maximize',
    'menu',                # floatpanel
    'menubutton',          # button menu
    'panel',
    'pastefromword',       # clipboard
    'pastetext',           # clipboard
    'popup',
    'removeformat',
    'resize',
    'richcombo',           # button floatpanel listblock
    'showborders',
    'sourcearea',
    'specialchar',         # dialog
    'stylescombo',         # richcombo
    'tab',
    'table',               # dialog
    'tabletools',          # contextmenu dialog table
    'toolbar',             # button
    'undo',
    'wysiwygarea'
  ]

  EXTRA_PLUGINS = [
    'autolink',            # clipboard
    'bootstrapVisibility',
    'bt_table',            # dialog table
    'btbutton',            # dialog widget
    'btgrid',              # dialog widget
    'btquicktable',        # bt_table floatpanel panelbutton
    'codemirror',
    'codesnippet',         # dialog widget
    'codeTag',
    'divarea',
    'easykeymap',          # wysiwygarea
    'glvrdPlugin',
    'image2',              # dialog widget
    'justify',
    'lineutils',
    'panelbutton',         # button
    'pbckcode',
    'placeholder',         # dialog widget
    'tableresize',         # tabletools
    'textselection',
    'toolbarswitch',       # button maximize toolbar
    'widget',              # clipboard lineutils
    'widgetbootstrap',     # widget
    'widgetcommon',        # widget
    'widgettemplatemenu',  # menu
    'youtube'
  ]

  REMOVE_PLUGINS = [
    'about',               # dialog
    'elementspath',
    'floatingspace',
    'scayt',               # dialog menubutton
    'wsc'                  # dialog
  ]

  MAX_TOOLBAR = [
    { name: 'document',    items: [ 'Source' ] },
    { name: 'clipboard',   items: [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
    { name: 'tools',       items: [ 'Toolbarswitch', 'ShowBlocks' ] }
    { name: 'basicstyles', items: [ 'Bold','Italic','Underline','Strike','-','RemoveFormat', '-', 'Link','Unlink' ] },
    { name: 'paragraph',   items: [ 'NumberedList','BulletedList','-','Blockquote' ] },
    '/',
    { name: 'insert',      items: [ 'Image', 'Youtube', 'Flash', 'Table'] },
    { name: 'styles',      items: [ 'Format', 'pbckcode'] }
  ]

  MIN_TOOLBAR = [
    { name: 'basicstyles', items: [ 'Bold','Italic','Underline','Strike','-','RemoveFormat', '-', 'Link','Unlink' ] },
    { name: 'tools',       items: [ 'Toolbarswitch', 'ShowBlocks', 'glvrdPlugin' ] }
  ]

  EASYKEYMAPS_HASH =
    1114144: (editor) ->              # CTRL+Space
      editor.insertHtml '&nbsp;'
    1114195: (editor) ->              # CTRL+S
      alert("You have entered 'CTRL + S' In editor: #{editor.name}")
    4456515: String.fromCharCode(169) # ALT+C
    4456530: String.fromCharCode(174) # ALT+R

  filebrowserParams = ->
    csrf_token = null
    csrf_param = null
    meta = null
    metas = document.getElementsByTagName('meta')
    params = new Object()
    i = 0
    while i < metas.length
      meta = metas[i]
      switch(meta.name)
        when 'csrf-token' then csrf_token = meta.content
        when 'csrf-param' then csrf_param = meta.content
        else continue
      i++
    params[csrf_param] = csrf_token if csrf_param isnt `undefined` and csrf_token isnt `undefined`
    params

  config.allowedContent = true
  config.codeSnippet_theme = 'obsidian'
  config.disableNativeSpellChecker = false
  config.easykeymaps = EASYKEYMAPS_HASH
  config.extraPlugins = EXTRA_PLUGINS.join()
  config.filebrowserBrowseUrl = '/ckeditor/attachment_files'
  config.filebrowserFlashBrowseUrl = '/ckeditor/attachment_files'
  config.filebrowserFlashUploadUrl = '/ckeditor/attachment_files'
  config.filebrowserImageBrowseLinkUrl = '/ckeditor/pictures'
  config.filebrowserImageBrowseUrl = '/ckeditor/pictures'
  config.filebrowserImageUploadUrl = '/ckeditor/pictures'
  config.filebrowserParams = filebrowserParams
  config.filebrowserUploadUrl = '/ckeditor/attachment_files'
  config.maximizedToolbar = 'maxToolbar'
  config.removePlugins = REMOVE_PLUGINS.join()
  config.scayt_autoStartup = false
  config.skin = 'moonocolor'
  config.smallToolbar = 'minToolbar'
  # config.toolbar = 'minToolbar'
  config.toolbar_maxToolbar = MAX_TOOLBAR
  config.toolbar_minToolbar = MIN_TOOLBAR

@CKeditor_OnComplete = (ckEditorInstance) ->
  return
