defmodule EctoIssue.TODO.List do
  use Ecto.Schema
  import Ecto.Changeset

  schema "lists" do
    field :title, :string

    has_many(:items, EctoIssue.TODO.Item)

    timestamps()
  end

  @doc false
  def changeset(list, attrs) do
    list
    |> cast(attrs, [:title])
    |> cast_assoc(:items, required: true)
    |> validate_required([:title])
  end
end
