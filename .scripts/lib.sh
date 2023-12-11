ensure_env() {
    local var_name="$1"
    if [ -z "${!var_name}" ]; then
        echo "Environment variable '$var_name' is not defined, aborting..."
        exit 1
    fi
}

ensure_file() {
    if [ ! -f "$1" ]; then
        echo "No file found $1"
        exit 1
    fi
}

delete_between() {
    local file="$1"
    local start_regex="$2"
    local end_regex="$3"
    sed -i "/$start_regex/,/$end_regex/{//!d}" "$file"
}

append_after() {
    local file="$1"
    local regex="$2"
    local text="${3//$'\n'/\\$'\n'}" # Escape newlines in text
    sed -i "/$regex/a $text" "$file"
}

replace_in_file() {
    local file="$1"
    local start_regex="$2"
    local end_regex="$3"
    local text="$4"
    delete_between "$file" "$start_regex" "$end_regex"
    append_after "$file" "$start_regex" "$text"
}