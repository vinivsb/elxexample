defmodule Colors do

  def convert do
    Colors.terminal_colors
    |> Enum.map(&int_to_hex/1)
    |> Enum.join(":")
  end

  def int_to_hex(rgb_color) do
    rgb_color
    |> Enum.map(&to_str_base16/1)
    |> List.insert_at(0, "#")
    |> Enum.join("")
  end

  def to_str_base16(color) do
    Integer.to_string(color, 16)
    |> String.rjust(2, ?0)
  end

  def terminal_colors do
    [[0,0,0],
    [145,34,38],
    [119,137,0],
    [174,123,0],
    [29,37,148],
    [104,42,155],
    [43,102,81],
    [146,149,147],
    [102,102,102],
    [204,102,102],
    [181,189,104],
    [240,198,116],
    [129,182,190],
    [178,148,187],
    [138,190,183],
    [236,235,236]]
  end
end
