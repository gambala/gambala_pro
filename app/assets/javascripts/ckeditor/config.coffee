CKEDITOR.editorConfig = (config) ->
  config.allowedContent = true
  config.codeSnippet_theme = 'obsidian'
  config.extraPlugins = 'panel,autolink,button,panelbutton,bt_table,floatpanel,divarea,menu,lineutils,widget,image2,youtube,tableresize,justify,codesnippet,sourcedialog,widgetbootstrap,widgetcommon,widgettemplatemenu,btgrid,pbckcode,btbutton,btquicktable,placeholder,bootstrapVisibility,nbsp,textselection,codeTag,toolbarswitch,easykeymap'
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
    { name: 'tools',       items: [ 'Toolbarswitch', 'ShowBlocks' ] }
  ]

  # config.toolbar = 'minToolbar'
  config.uiColor = '#AADC6E'

@CKeditor_OnComplete = (ckEditorInstance) ->
  return
