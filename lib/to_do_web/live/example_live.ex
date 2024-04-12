defmodule ToDoWeb.ExampleLive do
    use ToDoWeb, :live_view


  def mount(_params, _session, socket) do
    {:ok, assign(socket, :count, 0)}
  end

  def render(assigns) do
    ~H"""
    <.ExampleSvelteComponent count={@count} />
    """
  end

  def handle_event("increment", _params, socket) do
    {:noreply, assign(socket, :count, socket.assigns.count + 1)}
  end
end
