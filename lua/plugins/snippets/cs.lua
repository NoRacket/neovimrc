local function repeat_arg (args, parent, user_args)
	return args[1][1]
end
return {
	s("fn", {
		c(1, {
			t"public ",
			t"",
			t"private ",
		}),
		c(2, {
			t"override ",
			t"",
		}),
		i(3, "void"),
		t" ",
		i(4, "funcName"),
		t"(",
		i(5),
		t{") {", "\t"},
		i(0),
		t{"","}"},
	}),

	s("for", {
		t"for (var ",
		i(1, "i"),
		t" = ",
		i(2, "0"),
		t"; ",
		f(repeat_arg, 1),
		i(3, " < "),
		i(4, "length"),
		t"; ",
		f(repeat_arg, 1),
		i(5, "++"),
		t{") {", "\t"},
		i(0),
		t{"", "}"},
	}),

	s("foreach", {
		t"foreach (var ",
		i(1, "x"),
		t" in ",
		i(2, "xs"),
		t{") {", "\t"},
		i(0),
		t{"", "}"},
	}),

	s("print", {
		t"Console.WriteLine(",
		i(0),
		t");"
	}),
}
