class Stat < ApplicationRecord
  validates :singleton_guard, inclusion: { in: [0] }

  def self.instance
    first_or_create(singleton_guard: 0)
  end

  def self.method_missing(method, *args)
    if Stat.instance.methods.include?(method)
      Stat.instance.send(method, *args)
    else
      super
    end
  end
end
