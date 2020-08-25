defmodule NervesHubAPIWeb.Plugs.Device do
  import Plug.Conn

  alias NervesHubWebCore.Devices

  def init(opts) do
    opts
  end

  def call(%{params: %{"device_identifier" => device_identifier}} = conn, _opts) do
    case Devices.get_device_by_identifier(conn.assigns.org, device_identifier) do
      {:ok, device} ->
        conn
        |> assign(:device, device)

      _ ->
        conn
        |> put_resp_header("content-type", "application/json")
        |> send_resp(403, Jason.encode!(%{status: "Invalid device: #{device_identifier}"}))
        |> halt()
    end
  end
end
