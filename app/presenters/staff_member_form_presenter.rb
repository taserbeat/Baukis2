class StaffMemberFormPresenter < FormPresenter
  def password_field_block(name, label_text, options = {})
    super(name, label_text, options) if object.new_record?
  end

  def full_name_block(name1, name2, label_text, options = {})
    markup(:div, class: 'input-block') do |m|
      m << decorated_label(name1, label_text, options)
      m << text_field(name1, options)
      m << text_field(name2, options)
    end
  end

  def suspended_checkbox
    markup(:div, class: 'check-boxes') do |m|
      m << check_box(:suspended)
      m << label(:suspended, 'アカウント停止')
    end
  end
end
