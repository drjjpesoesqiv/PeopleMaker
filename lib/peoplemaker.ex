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

  def get_people do
    People
    |> order_by(:id)
    |> limit(10)
    |> Repo.all
  end
end
