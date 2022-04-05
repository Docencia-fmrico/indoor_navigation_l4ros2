import sys

if __name__ == "__main__":

  if len(sys.argv) != 2:
    print("One argument needed.")
    exit(1)

  init_found = False

  init_phrase = "(:init"
  end_phrase = ")\n"

  f = open(sys.argv[1], "r")
  commands_f = open("predicates.txt", "w")
  for line in f.readlines():
    print("loop",line)
    if line == end_phrase and init_found:
      break

    if init_found:
      if not line.__contains__(";") and line.__contains__("("):
        commands_f.writelines("set predicate" + line)


    if line.startswith(init_phrase):
      init_found = True

  f.close()
  commands_f.close()
    