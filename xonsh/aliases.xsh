def _ll(args):
    if len(args) == 1:
        $[ls -Gl @(args[0])]
    elif len(args) == 2:
        $[ls -Gl @(args[0]) @(args[1])]
    else:
        $[ls -Gl]

aliases["ll"] = _ll
