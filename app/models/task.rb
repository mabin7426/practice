class Task < ActiveRecord::Base
  attr_accessible :duedate, :notes, :priority, :subject, :title
end
