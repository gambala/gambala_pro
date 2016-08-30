Ckeditor.setup do |config|
  require 'ckeditor/orm/active_record'

  config.assets_languages = %w(ru)
  config.assets_plugins = %w(
    a11yhelp
    basicstyles
    blockquote
    button
    clipboard
    contextmenu
    dialog
    dialogui
    enterkey
    entities
    fakeobjects
    filebrowser
    floatpanel
    format
    horizontalrule
    htmlwriter
    image
    indent
    indentlist
    link
    list
    listblock
    magicline
    maximize
    menu
    menubutton
    panel
    pastefromword
    pastetext
    popup
    removeformat
    resize
    richcombo
    showborders
    sourcearea
    specialchar
    stylescombo
    tab
    table
    tabletools
    toolbar
    undo
    wysiwygarea
    autolink
    bootstrapVisibility
    bt_table
    btbutton
    btgrid
    btquicktable
    codemirror
    codesnippet
    divarea
    easykeymap
    filetools
    glvrdPlugin
    image2
    justify
    lineutils
    notification
    notificationaggregator
    panelbutton
    placeholder
    tableresize
    textselection
    toolbarswitch
    uploadimage
    uploadwidget
    widget
    widgetbootstrap
    widgetcommon
    widgettemplatemenu
    youtube
  )
  config.attachment_file_types = %w(doc docx xls odt ods pdf rar zip tar tar.gz swf)
  config.parent_controller = 'Web::ApplicationController'
  # config.js_config_url = '/assets/ckeditor/config.js'
end
