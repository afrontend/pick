%.o: %.c
	gcc -g -Wall -Wextra -pedantic-errors -Wno-unused-parameter -Werror -c $<

pick: main.o trie_list.o trie.o
	gcc $^ -o $@

clean:
	rm -f *.o pick
