# == Schema Information
#
# Table name: project_simulations
#
#  id               :bigint           not null, primary key
#  complexity       :string
#  description      :text
#  difficulty       :integer
#  expected_results :text
#  objectives       :text
#  title            :string
#  tools            :text
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class ProjectSimulation < ApplicationRecord
    enum difficulty: { Fácil: 0, Média: 1, Difícil: 2 }
  
    has_and_belongs_to_many :users
  
    DIFFICULTIES = %w[Fácil Média Difícil].freeze
    COMPLEXITIES = %w[Baixa Média Alta].freeze
  
    validates :difficulty, presence: true, inclusion: { in: DIFFICULTIES }
    validates :complexity, presence: true, inclusion: { in: COMPLEXITIES }
  end
  