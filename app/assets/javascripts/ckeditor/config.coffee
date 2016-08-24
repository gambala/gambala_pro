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
    'glvrdPlugin'
    'image2'              # dialog widget
    'justify'
    'lineutils'
    'panelbutton'         # button
    'placeholder'         # dialog widget
    'tableresize'         # tabletools
    'textselection'
    'toolbarswitch'       # button maximize toolbar
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
      name: 'document'
      groups: ['mode', 'document', 'doctools']
      items: [
        'Source'
        '-'
        'autoFormat'
        'CommentSelectedRange'
        'UncommentSelectedRange'
        'AutoComplete'
      ]
    ,
      name: 'clipboard'
      groups: ['clipboard', 'undo']
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
      groups: ['find', 'selection']
      items: [
        'Find'
        'Replace'
        '-'
        'SelectAll'
      ]
    ,
      '/'
    ,
      name: 'basicstyles'
      groups: ['basicstyles', 'cleanup']
      items: [
        'Bold'
        'Italic'
        'Underline'
        'Strike'
        'Subscript'
        'Superscript'
        '-'
        'RemoveFormat'
      ]
    ,
      name: 'paragraph'
      groups: ['list', 'indent', 'blocks', 'align', 'bidi']
      items: [
        'NumberedList'
        'BulletedList'
        '-'
        'Outdent'
        'Indent'
        '-'
        'Blockquote'
        'CreateDiv'
        '-'
        'JustifyLeft'
        'JustifyCenter'
        'JustifyRight'
        'JustifyBlock'
      ]
    ,
      name: 'links'
      items: [
        'Link'
        'Unlink'
        'Anchor'
      ]
    ,
      name: 'insert'
      items: [
        'CreatePlaceholder'
        'WidgetcommonQuotebox'
        'WidgetbootstrapTwoCol'
        'CodeSnippet'
        'Image'
        'WidgetcommonBox'
        'WidgetbootstrapAlert'
        'WidgetbootstrapLeftCol'
        'WidgetbootstrapRightCol'
        'WidgetbootstrapThreeCol'
        'Table'
        'HorizontalRule'
        'PageBreak'
        'Iframe'
        'Youtube'
      ]
    ,
      '/'
    ,
      name: 'styles'
      items: [
        'Styles'
        'Format'
      ]
    ,
      name: 'tools'
      items: [
        'Toolbarswitch'
        'ShowBlocks'
      ]
    ,
      name: 'others'
      items: [
        'btbutton'
        'btgrid'
        'WidgetTemplateMenu'
        'glvrdPlugin'
      ]
  ]

  MIN_TOOLBAR = [
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
      ]
    ,
      name: 'document'
      items: [
        'Source'
        '-'
        'Toolbarswitch'
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
    1114144: (editor) ->              # CTRL+Space
      editor.insertHtml '&nbsp;'
    1114195: (editor) ->              # CTRL+S
      alert("You have entered 'CTRL + S' In editor: #{editor.name}")
    4456515: String.fromCharCode(169) # ALT+C
    4456530: String.fromCharCode(174) # ALT+R

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
  config.maximizedToolbar = 'maxToolbar'
  config.removePlugins = REMOVE_PLUGINS.join()
  config.scayt_autoStartup = false
  config.skin = 'moonocolor'
  config.smallToolbar = 'minToolbar'
  config.stylesSet = CUSTOM_STYLESSET
  config.toolbar = 'minToolbar'
  config.toolbar_maxToolbar = MAX_TOOLBAR
  config.toolbar_minToolbar = MIN_TOOLBAR

@CKeditor_OnComplete = (ckEditorInstance) ->
  return

