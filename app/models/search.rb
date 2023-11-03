class Search

  def initialize(query, options = {})
    @query = query
    @category_id = options[:category_id]
    @manufacturer_id = options[:manufacturer_id]
  end

  def results
    devices = Device.where("name like '%#{@query}%'")
    if @category_id.present?
      devices = devices.where(category: @category_id)
    end
    if @manufacturer_id.present?
      devices = devices.where(manufacturer: @manufacturer_id)
    end
    devices
  end

end
