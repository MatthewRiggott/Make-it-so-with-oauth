class Bracelet
  def initialize(bracelet_id)
    @bracelet_id = bracelet_id
  end

  def shock?
    openURI(https://pavlok.herokuapp.com/api/bracelet_id/beep/2)
  end
end
