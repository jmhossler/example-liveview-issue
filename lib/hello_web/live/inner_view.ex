defmodule HelloWeb.Live.InnerView do
  use Phoenix.LiveView
  alias HelloWeb.Live.InnerStatefulComponent

  @impl true
  def render(assigns) do
    ~H"""
      <div>
        <.live_component module={InnerStatefulComponent} id={:my_child_component} text="Hello, world!" />
      </div>
    """
  end

  @impl true
  def mount(_params, _session, socket) do
    {:ok, socket}
  end

end
