defmodule HelloWeb.Live.MainView do
  use Phoenix.LiveView

  import Phoenix.LiveView.Helpers

  alias HelloWeb.Live.MainComponent

  @impl true
  def render(assigns) do
    ~H"""
      <div id="main_view">
        <%# live_component MainComponent, id: "my_main_component" %>
        <%= live_component MainComponent %>
      </div>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

end
