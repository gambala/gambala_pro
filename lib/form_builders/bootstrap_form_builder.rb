class BootstrapFormBuilder < ActionView::Helpers::FormBuilder
  def error_message(field_name)
    return if @object.errors[field_name].blank?
    @template.content_tag :div, @object.errors[field_name].join(', '), class: 'help-block'
  end

  def form_group(field_name, options = {})
    class_def = 'form-group'
    class_def << ' has-error' unless @object.errors[field_name].blank?
    class_def << " #{options[:class]}" if options[:class].present?
    options[:class] = class_def
    @template.content_tag(:div, options) { yield }
  end

  def bs_collection_radio_buttons(*args, &block)
    radio = collection_radio_buttons *args do |ff|
      ff.label(class: "btn btn-default btn-sm #{active_class_for_radio(ff.radio_button)}") do
        ff.radio_button + ff.text
      end
    end
    @template.content_tag :div, radio,
                          class: 'btn-group clearfix',
                          data: { toggle: 'buttons' }
  end

  private

  def active_class_for_radio(input)
    'active' if input.include? 'checked'
  end
end
