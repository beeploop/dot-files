return {
	"L3MON4D3/LuaSnip",
	version = "v2.3.0",
	build = "make install_jsregexp",
	config = function()
		local ls = require("luasnip")
		local s = ls.snippet
		local t = ls.text_node
		local i = ls.insert_node
		local extras = require("luasnip.extras")
		local rep = extras.rep
		local fmt = require("luasnip.extras.fmt").fmt

		ls.config.set_config({
			history = true,
			updateevents = "TextChanged,TextChangedI",
		})

		vim.keymap.set({ "i", "s" }, "<C-l>", function()
			if ls.expand_or_jumpable() then
				return ls.expand_or_jump()
			end
		end, { silent = true })

		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			if ls.jumpable(-1) then
				return ls.jump(-1)
			end
		end, { silent = true })

		-- Dart snippet
		ls.add_snippets("dart", {
			s(
				"stl",
				fmt(
					[[
                    import 'package:flutter/material.dart';

                    class {} extends StatelessWidget {{
                        const {}({{super.key}});

                        @override
                        Widget build(BuildContext context) {{
                            throw UnimplementedError();
                        }}
                    }}
                    ]],
					{ i(1), rep(1) }
				)
			),
			s(
				"stf",
				fmt(
					[[
                    import 'package:flutter/material.dart';

                    class {} extends StatefulWidget {{
                        const {}({{super.key}});

                        @override
                        State<{}> createState() => _{}State();
                    }}

                    class _{}State extends State<{}> {{
                        @override
                        Widget build(BuildContext context) {{
                            return Scaffold(
                              {}
                            );
                        }}
                    }}
                    ]],
					{
						i(1),
						rep(1),
						rep(1),
						rep(1),
						rep(1),
						rep(1),
						i(2),
					}
				)
			),
			s(
				"cnp",
				fmt(
					[[
                    import 'package:flutter/foundation.dart';

                    class {}Provider extends ChangeNotifier {{
                        {}
                    }}
                    ]],
					{ i(1), i(2) }
				)
			),
		})
	end,
}
