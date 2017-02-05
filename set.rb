require 'set'
s1 = Set.new [1, 2]                   # -> #<Set: {1, 2}>
s2 = [1, 2].to_set                    # -> #<Set: {1, 2}>
s1 == s2                              # -> true
s1.add("foo")                         # -> #<Set: {1, 2, "foo"}>
s1.merge([2, 6])                      # -> #<Set: {1, 2, "foo", 6}>
p s1.subset? s2                         # -> false
p s2.subset? s1                         # -> true {1, 2} is a subset of {1, 2, "foo", 6}