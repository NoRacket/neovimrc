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
}
