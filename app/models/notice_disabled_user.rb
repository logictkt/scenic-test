class NoticeDisabledUser < ApplicationRecord
  include UserConcern
  include Readonly
end
