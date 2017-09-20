defmodule Peoplemaker.Repo.Migrations.CreatePeopleTable do
  use Ecto.Migration

  def change do
    create table(:people) do
      add :first, :string
      add :last, :string
    end
  end
end
