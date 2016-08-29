initSmooch = ->
  smoochPromise = Smooch.init(
    appToken: 'c4hggr2rsoskrn0hi7sfjveix'
    customText:
      connectNotificationText: 'Продолжите общение в вашем любимом мессенджере'
      headerText: 'Чем могу помочь?'
      inputPlaceholder: 'Ваше сообщение...'
      introAppText: 'Пишите прямо здесь, или в своем любимом приложении.'
      introductionText: 'Я на связи, чем могу помочь?'
      notificationSettingsChannelsDescription: 'Вы можете общаться со мной не только на сайте, но и иными способами.'
      notificationSettingsChannelsTitle: 'Каналы для общения'
      sendButtonText: 'Отправить'
      settingsHeaderText: 'Настройки'
  )

  smoochPromise.then ->
    $('#sk-holder').remove()
    $('#sk-holder').attr('data-turbolinks-permanent', '')
    $('#sk-holder').find('#sk-conversation').attr('data-turbolinks-permanent-scroll', '')

# $(document).ready initSmooch
