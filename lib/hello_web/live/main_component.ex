defmodule HelloWeb.Live.MainComponent do
  use Phoenix.LiveComponent

  alias HelloWeb.Live.InnerView

  @impl true
  def render(assigns) do
    ~H"""
      <div>
        <%= live_render @socket, InnerView, id: :my_inner_view %>
      </div>
    """
  end
end
