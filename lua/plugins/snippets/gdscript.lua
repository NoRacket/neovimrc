local function repeat_arg (args, parent, user_args)
	return args[1][1]
end
return {
	 s("lm", {
	 	t "func(",
	 	i(1),
	 	t {"):", "\t"},
	 	i(0, "pass"),
	 }),

	s("ini", {
		t "func _init(",
		i(1),
		t { "):", "\t" },
		i(0, "pass"),
	}),

	-- s("meth", {
	-- 	t "def ",
	-- 	i(1, "funcName"),
	-- 	t"(self",
	-- 	i(2),
	-- 	t { "):", "\t" },
	-- 	i(0, "pass")
	-- }),

	s("fn", {
		t "func ",
		c(1, {
			sn(nil, {
				i(1, "funcName"),
				t"(",
				i(2),
				t") -> ",
				i(3, "void"),
				t { ":", "\t" },
			}),
			sn(nil, {
				i(1, "funcName"),
				t{"", "\t"},
			}),
		}),
		i(0, "pass"),
	}),

	s("for", {
		t "for ",
		i(1, "i"),
		t " in ",
		i(2, "iterable"),
		t{
			":",
			"\t",
		},
		i(0, "pass"),
	}),

	s("if", {
		t "if ",
		i(1, "condition"),
		t {
			":",
			"\t",
		},
		i(0, "pass")
	}),

	s("elif", {
		t "elif ",
		i(1, "condition"),
		t {
			":",
			"\t",
		},
		i(0, "pass")
	}),

	s("el", {
		t{
			"else:",
			"\t",
		},
		i(0),
	}),
}
