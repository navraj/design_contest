class Design < ActiveRecord::Base
  belongs_to :contest
  belongs_to :designer
end
