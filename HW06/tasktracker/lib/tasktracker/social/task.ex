defmodule Tasktracker.Social.Task do
  use Ecto.Schema
  import Ecto.Changeset
  alias Tasktracker.Social.Task


  schema "tasks" do
    field :iscomplete, :boolean, default: false
    field :task_description, :string
    field :task_name, :string
    field :timespent, :time
    belongs_to :user, Tasktracker.Accounts.User
    timestamps()
  end

  @doc false
  def changeset(%Task{} = task, attrs) do
    task
    |> cast(attrs, [:task_name, :task_description, :iscomplete, :timespent, :user_id])
    |> validate_required([:task_name, :task_description, :iscomplete, :timespent, :user_id])
  end

end
