class Search < ActiveRecord::Base
  def results
    People.find(:all, :conditions => ["name like ?", "%#{self.query}"])
  end
end
