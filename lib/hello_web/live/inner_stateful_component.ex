defmodule HelloWeb.Live.InnerStatefulComponent do
  use Phoenix.LiveComponent

  @impl true
  def render(assigns) do
    ~H"""
      <div id={@id}>
        <p><%= @text %></p>
        <button phx-target={@myself} phx-click={"reverse"}>Reverse me!</button>
      </div>
    """
  end

  @impl true
  def handle_event("reverse", _, socket = %{assigns: %{text: text}}) do
    IO.puts("reverse event triggered, current text: [#{text}]")
    {:noreply,
      socket
      |> assign(text: String.reverse(text))}
  end
end
