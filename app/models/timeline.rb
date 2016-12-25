class Timeline < Struct.new(:to_global_id)
  def self.find(_)
    new(to_global_id: "gid://help-me-react/Timeline/1")
  end
end
