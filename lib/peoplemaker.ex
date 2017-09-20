defmodule Peoplemaker.Repo do
  use Ecto.Repo, otp_app: :peoplemaker
end

defmodule Peoplemaker.People do
  use Ecto.Schema
  
  schema "people" do
    field :first
    field :last
  end
end

defmodule Peoplemaker.App do
  import Ecto.Query
  alias Peoplemaker.Repo
  alias Peoplemaker.People

  def get_all_people() do
    People
    |> order_by(:id)
    |> Repo.all
  end

  def add_person(first, last) do
    Repo.insert!(%People{first: first, last: last})
  end

  def add_random_person do
    Namegen.gen
    person = Namegen.gen |> Poison.decode!(keys: :atoms!)
    Repo.insert!(%People{first: person[:first], last: person[:last]})
  end
end
