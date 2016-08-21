CKEDITOR.editorConfig = (config) ->
  config.codeSnippet_theme = 'obsidian'
  config.extraPlugins = 'lineutils,widget,image2,youtube,tableresize,justify,codesnippet'
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

  config.toolbar_custom = [
    { name: 'document',    items: [ 'Source' ] },
    { name: 'clipboard',   items: [ 'Cut','Copy','Paste','PasteText','PasteFromWord','-','Undo','Redo' ] },
    { name: 'tools',       items: [ 'Maximize', 'ShowBlocks' ] }
    { name: 'basicstyles', items: [ 'Bold','Italic','Underline','Strike','-','RemoveFormat', '-', 'Link','Unlink' ] },
    { name: 'paragraph',   items: [ 'NumberedList','BulletedList','-','Blockquote' ] },
    '/',
    { name: 'insert',      items: [ 'Image', 'Youtube', 'Flash', 'Table'] },
    { name: 'styles',      items: [ 'Format' ] }
  ]

  # config.toolbar = 'custom'
  config.uiColor = '#AADC6E'
