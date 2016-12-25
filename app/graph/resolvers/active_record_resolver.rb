module ActiveRecordResolver
  def self.call(obj, args, ctx)
    GlobalID::Locator.locate args[:id]
  end
end
