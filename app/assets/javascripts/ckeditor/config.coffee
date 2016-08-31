CKEDITOR.editorConfig = (config) ->
  CORE_PLUGINS = [
    'a11yhelp'            # dialog
    'basicstyles'
    'blockquote'
    'button'
    'clipboard'           # dialog
    'contextmenu'         # menu
    'dialog'              # dialogui
    'dialogui'
    'enterkey'
    'entities'
    'fakeobjects'
    'filebrowser'         # popup
    'floatpanel'          # panel
    'format'              # richcombo
    'horizontalrule'
    'htmlwriter'
    'image'               # dialog
    'indent'
    'indentlist'          # indent
    'link'                # dialog fakeobjects
    'list'                # indentlist
    'listblock'           # panel
    'magicline'
    'maximize'
    'menu'                # floatpanel
    'menubutton'          # button menu
    'panel'
    'pastefromword'       # clipboard
    'pastetext'           # clipboard
    'popup'
    'removeformat'
    'resize'
    'richcombo'           # button floatpanel listblock
    'showborders'
    'sourcearea'
    'specialchar'         # dialog
    'stylescombo'         # richcombo
    'tab'
    'table'               # dialog
    'tabletools'          # contextmenu dialog table
    'toolbar'             # button
    'undo'
    'wysiwygarea'
  ]

  EXTRA_PLUGINS = [
    'autolink'            # clipboard
    'bootstrapVisibility'
    'bt_table'            # dialog table
    'btbutton'            # dialog widget
    'btgrid'              # dialog widget
    'btquicktable'        # bt_table floatpanel panelbutton
    'codemirror'
    'codesnippet'         # dialog widget
    'divarea'
    'easykeymap'          # wysiwygarea
    'filetools'
    'glvrdPlugin'
    'image2'              # dialog widget
    'justify'
    'lineutils'
    'notification'        # toolbar
    'notificationaggregator' # notification
    'panelbutton'         # button
    'placeholder'         # dialog widget
    'tableresize'         # tabletools
    'textselection'
    'toolbarswitch'       # button maximize toolbar
    'uploadimage'         # uploadwidget
    'uploadwidget'        # clipboard filetools notificationaggregator widget
    'widget'              # clipboard lineutils
    'widgetbootstrap'     # widget
    'widgetcommon'        # widget
    'widgettemplatemenu'  # menu
    'youtube'
  ]

  REMOVE_PLUGINS = [
    'about'               # dialog
    'bidi'
    'colorbutton'         # floatpanel panelbutton
    'colordialog'         # dialog
    'elementspath'
    'flash'               # dialog fakeobjects
    'floatingspace'
    'font'                # richcombo
    'forms'               # dialog fakeobjects
    'language'            # menubutton
    'newpage'
    'preview'
    'print'
    'save'
    'scayt'               # dialog menubutton
    'smiley'              # dialog
    'specialchar'         # dialog
    'templates'           # dialog
    'wsc'                 # dialog
  ]

  MAX_TOOLBAR = [
      name: 'tools'
      items: [
        'Toolbarswitch'
      ]
    ,
      name: 'clipboard'
      items: [
        'Cut'
        'Copy'
        'Paste'
        'PasteText'
        'PasteFromWord'
        '-'
        'Undo'
        'Redo'
      ]
    ,
      name: 'editing'
      items: [
        'Find'
        'Replace'
        '-'
        'SelectAll'
        'glvrdPlugin'
        'RemoveFormat'
      ]
    ,
      name: 'others'
      items: [
        'btbutton'
        'btgrid'
        'WidgetTemplateMenu'
      ]
    ,
      name: 'document'
      items: [
        'ShowBlocks'
        '-'
        'autoFormat'
        'CommentSelectedRange'
        'UncommentSelectedRange'
        'AutoComplete'
        '-'
        'Source'
      ]
    ,
      '/'
    ,
      name: 'styles'
      items: [
        'Format'
        'Styles'
      ]
    ,
      name: 'basicstyles'
      items: [
        'Bold'
        'Italic'
        'Underline'
        'Strike'
        'Subscript'
        'Superscript'
        'Link'
        'Unlink'
        'Anchor'
        '-'
        'NumberedList'
        'BulletedList'
      ]
    ,
      name: 'paragraph'
      items: [
        'JustifyLeft'
        'JustifyCenter'
        'JustifyRight'
        'JustifyBlock'
      ]
    ,
      name: 'insert'
      items: [
        'Image'
        'CodeSnippet'
        'Blockquote'
        'HorizontalRule'
        'Table'
        'PageBreak'
        'Youtube'
        'Iframe'
        'CreatePlaceholder'
        'CreateDiv'
      ]
  ]

  MIN_TOOLBAR = [
      name: 'tools'
      items: [
        'Toolbarswitch'
      ]
    ,
      name: 'styles'
      items: [
        'Format'
        'Styles'
      ]
    ,
      name: 'basicstyles'
      items: [
        'Bold'
        'Italic'
        'Underline'
        'Strike'
        'Link'
        'Unlink'
        '-'
        'NumberedList'
        'BulletedList'
      ]
    ,
      name: 'insert'
      items: [
        'Image'
        'CodeSnippet'
        'Blockquote'
        'HorizontalRule'
        'PageBreak'
      ]
    ,
      name: 'document'
      items: [
        'Source'
      ]
    ,
  ]

  CODESNIPPET_LANGUAGES =
    coffeescript: 'CoffeeScript'
    css:          'CSS'
    html:         'HTML'
    javascript:   'JavaScript'
    ruby:         'Ruby'

  EASYKEYMAPS_HASH =
    1114144: (editor) ->               # CTRL+Space
      editor.insertHtml '&nbsp;'
    3342525: (editor) ->               # CTRL+SHIFT+-
      editor.execCommand('horizontalrule')
    4456515: String.fromCharCode(169)  # ALT+C / copyright
    4456530: String.fromCharCode(174)  # ALT+R / registered
    4456636: String.fromCharCode(171)  # ALT+< / «
    4456637: String.fromCharCode(8212) # ALT+- / em dash
    4456638: String.fromCharCode(187)  # ALT+> / »

  CUSTOM_STYLESSET = [
      name: 'Code'
      element: 'code'
    ,
      name: 'Mark'
      element: 'mark'
    ,
      name: 'Snippet'
      type: 'widget'
      widget: 'codeSnippet'
      attributes:
        class: 'pulledSnippet narrow'
    ,
      name: 'Само-ссылка'
      type: 'widget'
      widget: 'image'
      attributes:
        class: 'img-with-link'
  ]

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
  config.codeSnippet_theme = 'arta'
  config.codeSnippet_languages = CODESNIPPET_LANGUAGES
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
  config.format_tags = 'p;h1;h2;h3;h4;h5;h6;div'
  config.maximizedToolbar = 'maxToolbar'
  config.removePlugins = REMOVE_PLUGINS.join()
  config.scayt_autoStartup = false
  config.skin = 'moonocolor'
  config.smallToolbar = 'minToolbar'
  config.stylesSet = CUSTOM_STYLESSET
  config.toolbar = 'minToolbar'
  config.toolbar_maxToolbar = MAX_TOOLBAR
  config.toolbar_minToolbar = MIN_TOOLBAR
  config.uploadUrl = '/ckeditor/pictures?responseType=json'

@CKeditor_OnComplete = (ckEditorInstance) ->
  return
