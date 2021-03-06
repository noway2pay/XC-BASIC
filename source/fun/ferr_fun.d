module fun.ferr_fun;

import language.fun, language.expression;
import std.string, std.conv;
import pegged.grammar;
import program;

class Ferr_fun:Fun
{
    mixin FunConstructor;

    protected ubyte arg_count = 0;

    override protected char[] getPossibleTypes()
    {
        return ['w', 'b'];
    }

    void process()
    {
        this.fncode ~= "\tferr"~ to!string(this.type) ~"\n";
    }
}
