
lambda { |stdout,stderr,status|
  output = stdout + stderr
  # runTestSuite prints its own counts, and an error there means a test never
  # reached a comparison, so it is read before the failures it is printed with.
  if match = /^Number of errors: +(\d+) *$/.match(output)
    return :amber if match[1] != '0'
  end

  # RUnit raises its own check functions by name, which is what tells a failed
  # comparison from code that broke on the way to one. The names are listed
  # rather than matched by prefix so that a learner's own checksum helper,
  # erroring, is not read as a test that disagreed.
  return :red if /Error in check(Equals|True|Identical|EqualsNumeric|Exception)\(/.match(output)

  return :green if /All tests passed/.match(output)
  return :amber
}
