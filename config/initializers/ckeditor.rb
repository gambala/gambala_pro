Ckeditor.setup do |config|
  require 'ckeditor/orm/active_record'

  config.assets_languages = %w(ru)
  config.assets_plugins = %w(
    a11yhelp
    autolink
    basicstyles
    blockquote
    bootstrapVisibility
    bt_table
    btbutton
    btgrid
    btquicktable
    button
    clipboard
    codemirror
    codesnippet
    contextmenu
    dialog
    dialogui
    divarea
    easykeymap
    enterkey
    entities
    fakeobjects
    filebrowser
    filetools
    floatpanel
    format
    glvrdPlugin
    horizontalrule
    htmlwriter
    image
    image2
    indent
    indentlist
    justify
    lineutils
    link
    list
    listblock
    magicline
    maximize
    menu
    menubutton
    notification
    notificationaggregator
    panel
    panelbutton
    pastefromword
    pastetext
    placeholder
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
    tableresize
    tabletools
    textselection
    toolbar
    toolbarswitch
    undo
    uploadimage
    uploadwidget
    widget
    widgetbootstrap
    widgetcommon
    widgettemplatemenu
    wysiwygarea
    youtube
  )
  config.attachment_file_types = %w(doc docx xls odt ods pdf rar zip tar tar.gz swf)
  config.parent_controller = 'Web::ApplicationController'
  # config.js_config_url = '/assets/ckeditor/config.js'
end
