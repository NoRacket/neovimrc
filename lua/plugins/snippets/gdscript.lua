return {
	-- s("lm", {
	-- 	t "lambda ",
	-- 	i(1, "x"),
	-- 	t ": ",
	-- 	i(0, "body"),
	-- }),
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
		i(1, "funcName"),
		t"(",
		i(2),
		t") -> ",
		i(3, "void"),
		t { ":", "\t" },
		i(0, "pass"),
	}),
}
