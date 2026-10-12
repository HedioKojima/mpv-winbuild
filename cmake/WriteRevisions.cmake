# cmake -D GIT_SOURCES=<file> -D OUTPUT=<file> -P WriteRevisions.cmake
#
# Reads the "<source> <source directory>" lines of GIT_SOURCES and writes a
# "<source> <commit>" line for each, with the commit checked out in that
# directory, to OUTPUT.

file(STRINGS "${GIT_SOURCES}" lines)
set(revisions "")
foreach(line IN LISTS lines)
    string(REGEX MATCH "^([^ ]+) (.+)$" match "${line}")
    set(source "${CMAKE_MATCH_1}")
    execute_process(
        COMMAND git -C "${CMAKE_MATCH_2}" rev-parse HEAD
        OUTPUT_VARIABLE commit
        OUTPUT_STRIP_TRAILING_WHITESPACE
        COMMAND_ERROR_IS_FATAL ANY
    )
    string(APPEND revisions "${source} ${commit}\n")
endforeach()
file(WRITE "${OUTPUT}" "${revisions}")
