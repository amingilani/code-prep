# TODO: complete this class

class PaginationHelper
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end

  # returns the number of items within the entire collection
  def item_count
    @collection.count
  end

  # returns the number of pages
  def page_count
    (item_count.to_f / @items_per_page).ceil
  end

  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    if page_index < page_count
      @items_per_page
    elsif page_index == page_count
      item_count % @items_per_page
    else
      -1
    end
  end

  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index)
    return -1 if item_index >= item_count
    ((item_index.to_f + 1) / items_per_page).to_ceil
  end
end
