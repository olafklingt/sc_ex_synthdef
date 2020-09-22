defmodule SCSynthDef.UGen.Maker do
  def make do
    make_dump()
    make_ugens()
  end

  defp make_dump do
    path = Path.dirname(__ENV__.file)
    cmd = "sh #{path}/make_ugen_tools/scdump.sh #{path}/make_ugen_tools/"
    Port.open({:spawn, cmd}, [:binary, :exit_status])
    :timer.sleep(5000)
  end

  defp make_ugens do
    path = Path.dirname(__ENV__.file)
    {:ok, a} = File.read("#{path}/make_ugen_tools/scdump.json")
    json = Jason.decode!(a)

    for name <- Map.keys(json) do
      methods = json[name]["methods"]
      number_of_outputs = json[name]["nOuts"]

      for method <- Map.keys(methods) do
        handle = String.capitalize(method)

        rate =
          case method do
            "ar" -> 2
            "kr" -> 1
            "ir" -> 0
            "new" -> 0
            _ -> -1
          end

        arguments = methods[method]

        make_def_file(name, handle, rate, number_of_outputs, arguments)
      end

      make_func_file(name, methods)
    end
  end

  defp save_var_name(n) do
    cond do
      n == "in" ->
        n <> "v"

      n == "end" ->
        n <> "v"

      n == "after" ->
        n <> "v"

      true ->
        n
    end
  end

  defp make_func_file(name, methods) do
    path = Path.dirname(__ENV__.file)

    func_list =
      for method <- Map.keys(methods) do
        arguments = methods[method]
        handle = String.capitalize(method)

        args =
          Enum.join(
            for x <- arguments do
              n = Enum.at(x, 0)
              v = Enum.at(x, 1)
              vn = save_var_name(n)

              if is_number(v) do
                "#{vn} \\\\ #{v}"
              else
                "#{vn} \\\\ #{inspect(nil)}"
              end
            end,
            ", "
          )

        fields =
          Enum.join(
            for x <- arguments do
              n = Enum.at(x, 0)

              # v = Enum.at(x, 1)

              vn = save_var_name(n)

              "#{n}: #{vn}"
            end,
            ", "
          )

        """
        def #{method}(#{args}) do
          %UGen.#{name}.#{handle}{#{fields}}
        end
        """
      end

    funcs = Enum.join(func_list, "    ")

    File.write(
      "#{path}/ugens/#{name}.ex",
      """
      defmodule #{name} do
        #{funcs}
      end
      """
    )
  end

  defp func_args_list(arguments) do
    for x <- arguments do
      n = Enum.at(x, 0)
      v = Enum.at(x, 1)

      cond do
        is_number(v) ->
          """
          #{":" <> n}, float, default: #{v})
          """

        is_nil(v) ->
          """
          field(#{":" <> n}, float, default: #{inspect(nil)})
          """

        true ->
          """
          field(#{":" <> n}, float, default: #{inspect(nil)})
          """
      end
    end
  end

  defp args_list(arguments) do
    for x <- arguments do
      String.to_atom(Enum.at(x, 0))
    end
  end

  defp fields_list(arguments) do
    for x <- arguments do
      n = Enum.at(x, 0)
      v = Enum.at(x, 1)

      cond do
        is_number(v) ->
          """
          field(#{":" <> n}, float, default: #{v})
          """

        is_nil(v) ->
          """
          field(#{":" <> n}, float, default: #{inspect(nil)})
          """

        true ->
          """
          field(#{":" <> n}, float, default: #{inspect(nil)})
          """
      end
    end
  end

  defp make_def_file(name, handle, rate, number_of_outputs, arguments) do
    path = Path.dirname(__ENV__.file)

    args = args_list(arguments)

    fields = fields_list(arguments)

    fields = Enum.join(fields, "    ")

    File.write("#{path}/ugens/#{name}_#{handle}.ex", """
    defmodule UGen.#{name}.#{handle} do
      def name(_ugen_struct), do: "#{name}"
      def rate(_ugen_struct), do: #{rate}
      def number_of_outputs(_ugen_struct), do: #{number_of_outputs}
      def outputs(_ugen_struct), do: #{
      Kernel.inspect(List.duplicate(rate, number_of_outputs), limit: :infinity)
    }
      def args(_ugen_struct), do: #{Kernel.inspect(args, limit: :infinity)}
      def special_index(_ugen_struct), do: #{0}

      use TypedStruct

      typedstruct do
        #{fields}
      end
    end
    """)
  end

  # defp make_opperators do
  #   binops = [
  #     "+",
  #     "-",
  #     "*",
  #     "/",
  #     "%",
  #     "**",
  #     "<",
  #     "<=",
  #     ">",
  #     ">=",
  #     "&",
  #     "|",
  #     ">>",
  #     "+>>",
  #     "<!",
  #     "@",
  #     "==",
  #     "div",
  #     "min",
  #     "max",
  #     "lcm",
  #     "gcd",
  #     "round",
  #     "trunc",
  #     "atan2",
  #     "hypot",
  #     "hypotApx",
  #     "fill",
  #     "ring1",
  #     "ring2",
  #     "ring3",
  #     "ring4",
  #     "difsqr",
  #     "sumsqr",
  #     "sqrdif",
  #     "absdif",
  #     "amclip",
  #     "scaleneg",
  #     "clip2",
  #     "excess",
  #     "rrand",
  #     "exprand",
  #     "rotate",
  #     "dist",
  #     "bitAnd",
  #     "bitOr",
  #     "bitXor",
  #     "bitHammingDistance"
  #   ]
  #
  #   special_index = %{
  #     "+" => 0,
  #     "-" => 1,
  #     "*" => 2,
  #     "/" => 4,
  #     "<" => 8,
  #     "<=" => 10,
  #     ">" => 9,
  #     ">=" => 11,
  #     "neg" => 0,
  #     "reciprocal" => 16,
  #     "bitNot" => 4,
  #     "abs" => 5,
  #     "asFloat" => 6,
  #     "asInteger" => 7,
  #     "ceil" => 8,
  #     "floor" => 9,
  #     "frac" => 10,
  #     "sign" => 11,
  #     "squared" => 12,
  #     "cubed" => 13,
  #     "sqrt" => 14,
  #     "exp" => 15,
  #     "midicps" => 17,
  #     "cpsmidi" => 18,
  #     "midiratio" => 19,
  #     "ratiomidi" => 20,
  #     "ampdb" => 22,
  #     "dbamp" => 21,
  #     "octcps" => 23,
  #     "cpsoct" => 24,
  #     "log" => 25,
  #     "log2" => 26,
  #     "log10" => 27,
  #     "sin" => 28,
  #     "cos" => 29,
  #     "tan" => 30,
  #     "asin" => 31,
  #     "acos" => 32,
  #     "atan" => 33,
  #     "sinh" => 34,
  #     "cosh" => 35,
  #     "tanh" => 36,
  #     "rand" => 37,
  #     "rand2" => 38,
  #     "linrand" => 39,
  #     "bilinrand" => 40,
  #     "sum3rand" => 41,
  #     "distort" => 42,
  #     "softclip" => 43,
  #     "coin" => 44,
  #     "rectWindow" => 48,
  #     "hanWindow" => 49,
  #     "welWindow" => 50,
  #     "triWindow" => 51,
  #     "scurve" => 53,
  #     "ramp" => 52,
  #     "div" => 3,
  #     "mod" => 5,
  #     "pow" => 25,
  #     "min" => 12,
  #     "max" => 13,
  #     "bitAnd" => 14,
  #     "bitOr" => 15,
  #     "bitXor" => 16,
  #     "lcm" => 17,
  #     "gcd" => 18,
  #     "round" => 19,
  #     "roundUp" => 20,
  #     "trunc" => 21,
  #     "atan2" => 22,
  #     "hypot" => 23,
  #     "hypotApx" => 24,
  #     "leftShift" => 26,
  #     "rightShift" => 27,
  #     "unsignedRightShift" => 28,
  #     "ring1" => 30,
  #     "ring2" => 31,
  #     "ring3" => 32,
  #     "ring4" => 33,
  #     "difsqr" => 34,
  #     "sumsqr" => 35,
  #     "sqrsum" => 36,
  #     "sqrdif" => 37,
  #     "absdif" => 38,
  #     "thresh" => 39,
  #     "amclip" => 40,
  #     "scaleneg" => 41,
  #     "clip2" => 42,
  #     "fold2" => 44,
  #     "wrap2" => 45,
  #     "excess" => 43,
  #     "firstArg" => 46,
  #     "rrand" => 47,
  #     "exprand" => 48,
  #     "not" => 1
  #   }
  #
  #   for opp <- Map.keys(special_index) do
  #     name =
  #       cond do
  #         opp == "+" -> "add"
  #         opp == "-" -> "sub"
  #         opp == "*" -> "mul"
  #         opp == "/" -> "div"
  #         opp == "div" -> "idiv"
  #         opp == "max" -> "maxOp"
  #         opp == "min" -> "minOp"
  #         opp == "%" -> "mod"
  #         opp == "**" -> "pow"
  #         opp == "<" -> "smallerthan"
  #         opp == "<=" -> "smallerorequalthan"
  #         opp == ">" -> "biggerthan"
  #         opp == ">=" -> "biggerorequalthan"
  #         opp == "&" -> "and"
  #         opp == "|" -> "or"
  #         opp == ">>" -> "rightShift"
  #         opp == "+>>" -> "unsignedRightShift"
  #         opp == "<!" -> "returnFirstArgument"
  #         opp == "@" -> "point"
  #         opp == "==" -> "equal"
  #         true -> opp
  #       end
  #
  #     if(Enum.member?(binops, opp)) do
  #       # IO.puts("""
  #       # def #{name}(a,b) do
  #       #   %BOp{selector: :#{opp},a: a,b: b}
  #       # end
  #       # """)
  #     else
  #       IO.puts("""
  #       def #{name}(a) do
  #         %UOp{selector: :#{opp},a: a}
  #       end
  #       """)
  #     end
  #   end
  #
  #   #
  #   #   if Enum.member?(binops, opp) do
  #   #     make_def_file(name, handle, rate, number_of_outputs, arguments)
  #   #   else
  #   #     make_def_file(name, handle, rate, number_of_outputs, arguments)
  #   #   end
  #   # end
  # end
end
