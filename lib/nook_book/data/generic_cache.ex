defmodule NookBook.Data.GenericCache do
  @behaviour NookBook.Data.TableBehaviour

  require Record

  Record.defrecord(:generic_cache, key: nil, value: nil)

  @impl true
  def table_name(), do: :generic_cache

  @impl true
  def table_type(), do: :set

  @impl true
  def table_fields(), do: [:key, :value]

  @impl true
  def table_indexes(), do: []

end
