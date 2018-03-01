class User < ActiveRecord::Base
  # write associations here
  has_many :rides
  has_many :attractions, through: :rides


  validates :password, presence: true



  def mood
    if nausea < happiness
      'happy'
    else
      'sad'
    end
  end

  


end
