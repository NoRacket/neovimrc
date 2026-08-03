return {
	s("fcn", {
		t "func ",
		i(1),
		t "(",
		i(2),
		t ")",
		i(3),
		t { " {", "\t" },
		i(0),
		t { "", "}" }
	}),
	s("erriff", {
		t "if ",
		c(1, {
			t "err != nil",
			sn(nil, {
				t "err := ",
				i(1),
				t "; err != nil"
			}),
		}),
		t { " {", "\t" },
		c(2, {
			t"log.Fatal(err)",
			sn(nil, {
				t"return ",
				i(1),
				t"err",
			}),
		}),
		t{"", "}"},
		i(0),
	}),
	s("if", {
		t "if ",
		i(1, "cond"),
		t { " {", "\t" },
		i(0),
		t { "", "}" },
	}),
	s("elif", {
		t "else if ",
		i(1, "cond"),
		t { " {", "\t" },
		i(0),
		t { "", "}" },
	}),
	s("else", {
		t { "else {", "\t" },
		i(0),
		t { "", "}" },
	}),
	s("for", {
		t "for ",
		i(1),
		t { "{", "\t" },
		i(0),
		t { "", "}" },
	}),
	s("forSlice", {
		c(1, {
			sn(nil, {
				t "for _, ",
				i(1),
			}),
			sn(nil, {
				t"for ",
				i(1),
				t", ",
				i(2),
			}),
		}),
		t" := range ",
		i(2),
		t { " {", "\t" },
		i(0),
		t { "", "}" },
	}),
	s("switch", {
		t "switch ",
		i(1),
		t { " {", "case " },
		i(2),
		t { ":", "\t" },
		i(0),
		t { "", "}" },
	}),
	s("doc", {
		t{"/*", "\t"},
		i(0),
		t{"", "*/"},
	}),
}
