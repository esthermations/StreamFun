// This creates a Nightbot command (using the $(eval) variable to evaluate
// arbitrary JavaScript) that prints one of the lines from the given text file.

import std.stdio;
import std.format    : format;
import std.range     : empty;
import std.algorithm : startsWith;

void main(string[] args) {
    assert(args.length == 2, "Must provide one argument");
    auto file = File(args[1]);

    string ret = `$(eval const a=[`;

    foreach (line; file.byLineCopy) {
        if (line.empty() || line.startsWith("#")) {
            // Skip comments and empty lines
            continue;
        }
        ret ~= `"%s",`.format(line);
    }

    ret ~= `]; a[Math.floor(Math.random() * a.length)];)`;

    writeln(ret);
}
