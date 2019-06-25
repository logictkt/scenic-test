class NoticeActiveUser < ApplicationRecord
  include UserConcern
  include Readonly
end
