class DeletedUser < ApplicationRecord
  include UserConcern
  include Readonly
end
