import os

def _last_retval_color():
    try:
        len_history = len(__xonsh__.history) - 1
        last_retval = __xonsh__.history[len_history].rtn
    except Exception:
        return "{RESET}"

    if last_retval:
        return "{INTENSE_PURPLE}"
    else:
        return "{RESET}"

def _active_conda_env():
    env_name = os.path.basename($CONDA_PREFIX)

    if env_name == "miniconda3":
        return "base"

    return env_name

$PROMPT_FIELDS["last_retval_color"] = _last_retval_color
$PROMPT_FIELDS["active_conda_env"] = _active_conda_env

$PROMPT = "{GREEN}ryan {WHITE}({active_conda_env}) {CYAN}{cwd} {last_retval_color}{prompt_end}{RESET} "
