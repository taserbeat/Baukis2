require 'nkf'

module StringNormalizer
  extend ActiveSupport::Concern

  # 名前(姓,名)の正規化
  def normalize_as_name(text)
    NKF.nkf('-W -w -Z1', text).strip if text
  end

  # フリガナ(姓,名)の正規化
  def normalize_as_furigana(text)
    NKF.nkf('-W -w -Z1 --katakana', text).strip if text
  end

  # メールアドレスの正規化
  def normalize_as_email(text)
    NKF.nkf('-W -w -Z1', text).strip if text
  end

  # 郵便番号の正規化
  def normalize_as_postal_code(text)
    NKF.nkf('-W -w -Z1', text).strip.gsub(/-/, '') if text
  end
end
