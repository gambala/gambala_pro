CKEDITOR.editorConfig = (config) ->
  EXTRA_PLUGINS = [
    'autolink',            # clipboard
    'bootstrapVisibility',
    'bt_table',            # dialog table
    'btbutton',            # dialog widget
    'btgrid',              # dialog widget
    'btquicktable',        # bt_table floatpanel panelbutton
    'button',
    'codemirror',
    'codesnippet',         # dialog widget
    'codeTag',
    'divarea',
    'easykeymap',          # wysiwygarea
    'floatpanel',          # panel
    'glvrdPlugin',
    'image2',              # dialog widget
    'justify',
    'lineutils',
    'menu',                # floatpanel
    'nbsp',
    'panel',
    'panelbutton',         # button
    'pbckcode',
    'placeholder',         # dialog widget
    'sourcedialog',
    'tableresize',         # tabletools
    'textselection',
    'toolbarswitch',       # button maximize toolbar
    'widget',              # clipboard lineutils
    'widgetbootstrap',     # widget
    'widgetcommon',        # widget
    'widgettemplatemenu',  # menu
    'youtube'
  ]

  config.allowedContent = true
  config.codeSnippet_theme = 'obsidian'
  config.extraPlugins = EXTRA_PLUGINS.join()
  config.removePlugins = 'scayt,wsc'
  config.disableNativeSpellChecker = false
  config.scayt_autoStartup = false

  config.easykeymaps =
    4456530: String.fromCharCode(174) # ALT+R
    4456515: String.fromCharCode(169) # ALT+C

  config.easykeymaps[CKEDITOR.CTRL + 83] = (editor) ->
    alert("You have entered 'CTRL + S' In editor: #{editor.name}")

  config.filebrowserBrowseUrl = "/ckeditor/attachment_files"
  config.filebrowserFlashBrowseUrl = "/ckeditor/attachment_files"
  config.filebrowserFlashUploadUrl = "/ckeditor/attachment_files"
  config.filebrowserImageBrowseLinkUrl = "/ckeditor/pictures"
  config.filebrowserImageBrowseUrl = "/ckeditor/pictures"
  config.filebrowserImageUploadUrl = "/ckeditor/pictures"
  config.filebrowserUploadUrl = "/ckeditor/attachment_files"

  config.filebrowserParams = ->
    csrf_token = null
    csrf_param = null
    meta = null
    metas = document.getElementsByTagName("meta")
    params = new Object()
    i = 0
    while i < metas.length
      meta = metas[i]
      switch(meta.name)
        when "csrf-token" then csrf_token = meta.content
        when "csrf-param" then csrf_param = meta.content
        else continue
      i++
    params[csrf_param] = csrf_token  if csrf_param isnt `undefined` and csrf_token isnt `undefined`
    params

  config.maximizedToolbar = 'maxToolbar'
  config.smallToolbar = 'minToolbar'

  config.toolbar_maxToolbar = [
    { name: 'document',    items: [ 'Source' ] },
    { name: 'clipboard',   items: [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
    { name: 'tools',       items: [ 'Toolbarswitch', 'ShowBlocks' ] }
    { name: 'basicstyles', items: [ 'Bold','Italic','Underline','Strike','-','RemoveFormat', '-', 'Link','Unlink' ] },
    { name: 'paragraph',   items: [ 'NumberedList','BulletedList','-','Blockquote' ] },
    '/',
    { name: 'insert',      items: [ 'Image', 'Youtube', 'Flash', 'Table'] },
    { name: 'styles',      items: [ 'Format', 'pbckcode'] }
  ]
  config.toolbar_minToolbar = [
    { name: 'basicstyles', items: [ 'Bold','Italic','Underline','Strike','-','RemoveFormat', '-', 'Link','Unlink' ] },
    { name: 'tools',       items: [ 'Toolbarswitch', 'ShowBlocks', 'glvrdPlugin' ] }
  ]

  # config.toolbar = 'minToolbar'
  # config.uiColor = '#AADC6E'
  config.skin = 'moonocolor'

@CKeditor_OnComplete = (ckEditorInstance) ->
  return
