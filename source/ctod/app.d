module ctod.app;

import tree_sitter.api;
import core.stdc.stdio: printf;
import core.stdc.stdlib: free;
import core.stdc.string: strlen;

import std.stdio;
import std.exception;
import std.path: baseName, extension, withExtension, stripExtension;
import std.file: read, write;

import ctod.translate;
private:

int main(string[] args) {
	try {
		enforce(args.length >= 2, "give at least one file argument");
		//printHelp(args[0]);
		bool stripComments = false;
		foreach(i; 1..args.length) {
			TranslationSettings settings;
			if (args[i] == "--strip") {
				settings.stripComments = true;
			} else if (args[i] == "--help") {
				printHelp(args[0]);
			} else {
				const fname = args[i];
				enforce(
					fname.extension == ".c" || fname.extension == ".h",
					"file shoud have .c or .h extension, not "~fname.extension
				);
				const source = cast(string) read(fname);
				const moduleName = fname.baseName.stripExtension;
				write(fname.withExtension(".d"), translateFile(source, moduleName, settings));
			}
		}
	} catch (Exception e) {
		writeln(e.msg);
		return -1;
	}
	return 0;
}

void printHelp(string name) {
	writefln("Usage: %s [FILES]\nOptions:\n  --strip  strip comments", name);
}