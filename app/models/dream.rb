class Dream < ActiveRecord::Base
  attr_accessible :title, :teaser, :body, :version, :changelog, :user_id, :message, :freezebody, :state, :submitted, :accepted, :tag_list
  belongs_to :user
  has_many :comments, :dependent => :destroy

  acts_as_taggable
  has_reputation :votes, source: :user, aggregated_by: :sum

  validates :user_id, :presence => true
  validates :title, :presence => true, :length => { :maximum => 80 }
  validates :teaser, :presence => true, :length => { :maximum => 500 }
  validates :body, :presence => true
  validates :version, :length => { :maximum => 120 }
  validates :changelog, :length => { :maximum => 2000 }
  validates :message, :length => { :maximum => 5000 }
  validates :state, :presence => true, :numericality => true, :inclusion => { :in => 0..4 }

  scope :featured, where(state: '4')
  scope :standard, where(state: '3')
  scope :rejected, where(state: '2')
  scope :submitted, where(state: '1')
  scope :pvt, where(state: '0')
  scope :published, where("state = '3' or state = '4'")
  scope :recent, where("created_at >= to_timestamp(?)", Time.now-30.days.ago).order("created_at desc").first(5)
  scope :loved, find_with_reputation(:votes, :all, {:conditions => ["value >= ?", 1], :order => "votes DESC"}).first(5)

  def self.states
    { featured: Dream.featured.count,
      standard: Dream.standard.count,
      rejected: Dream.rejected.count,
      submitted: Dream.submitted.count,
      pvt: Dream.pvt.count,
      published: Dream.published.count
    }
  end

  def self.search(query)
    if query.present?
      where("title @@ :q or teaser @@ :q or body @@ :q", q: query)
    else
      scoped
    end
  end

  protected
    def record_not_found
      flash[:error] = 'The dream you requested could not be found.'
      redirect_to root_url
    end
end