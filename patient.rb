class Patient
  attr_reader :name, :gender
  attr_accessor :room, :id


  def initialize(attrs={})
    @name = attrs[:name] || "Anonymous"
    @gender = attrs[:gender] || "undefined"
    @cured = attrs[:cured] || false
    # @room = attrs[:room]
    @id = attrs[:id]
  end

  def cured?
    @cured
  end

  def cure!
    @cured = true
  end

end
