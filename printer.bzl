"""Example of a rule that accesses its attributes."""

# buildifier: disable=print
def _impl(ctx):
    # For debugging, consider using `dir` to explore the existing fields.
    print(dir(ctx))  # prints all the fields and methods of ctx
    print(dir(ctx.attr))  # prints all the attributes of the rule
    print(ctx.attr.starsign) 
    print(ctx.attr.number) 

printer = rule(
    implementation = _impl,
    attrs = {
        # Do not declare "name": It is added automatically.
        "number": attr.int(default = 1),
        "starsign": attr.string(),
    },
)


