# cmake -D GIT_SOURCES=<file> -D OUTPUT=<file> -P WriteRevisions.cmake
#
# Writes to OUTPUT a "<source> <commit>" line, with the checked-out commit, for
# each "<source> <source directory>" line of GIT_SOURCES.

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
