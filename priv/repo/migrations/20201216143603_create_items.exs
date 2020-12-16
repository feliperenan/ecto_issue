defmodule EctoIssue.Repo.Migrations.CreateItems do
  use Ecto.Migration

  import Ecto.Changeset

  def change do
    create table(:items) do
      add :name, :string
      add :list_id, references(:lists, on_delete: :nothing)

      timestamps()
    end

    create index(:items, [:list_id])
  end

end
