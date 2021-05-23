defmodule InmanaWeb.RestaurantsViewTest do
  use InmanaWeb.ConnCase

  import Phoenix.View

  alias Inmana.Restaurant
  alias InmanaWeb.RestaurantsView

  describe "render/2" do
    test "renders create.json" do
      params = %{name: "A Força da fome", email: "maytheforce@bewithyou.com"}
      {:ok, restaurant} = Inmana.create_restaurant(params)

      response = render(RestaurantsView, "create.json", restaurant: restaurant)

      assert %{
               message: "Restaurant created!",
               restaurant: %Restaurant{
                 email: "maytheforce@bewithyou.com",
                 id: _id,
                 name: "A Força da fome"
               }
             } = response
    end
  end
end
