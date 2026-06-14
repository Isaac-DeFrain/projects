#!/nix/store/3hgg7pr65imdrifqqh3flg3arvkc2r22-bash-5.3p3/bin/bash

set -euo pipefail

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root_dir="$(cd "${script_dir}/.." && pwd)"
owner="Isaac-DeFrain"
metadata_file="${root_dir}/.repo-metadata"
projects_file="${root_dir}/projects.txt"
readme="${root_dir}/README.md"
section_file="$(mktemp)"

trap 'rm -f "$section_file"' EXIT

if [[ ! -f "$metadata_file" ]]; then
  echo "Missing ${metadata_file}. Run ./scripts/repo-metadata-query.sh first." >&2
  exit 1
fi

declare -A descriptions homepages og_urls

while IFS= read -r line || [[ -n "$line" ]]; do
  [[ -z "$line" ]] && continue

  repo="$(awk -F'\t' '{ print $1 }' <<< "$line")"
  description="$(awk -F'\t' '{ print $2 }' <<< "$line")"
  homepage="$(awk -F'\t' '{ print $3 }' <<< "$line")"
  og_url="$(awk -F'\t' '{ print $4 }' <<< "$line")"

  descriptions["$repo"]="$description"
  homepages["$repo"]="$homepage"
  og_urls["$repo"]="$og_url"
done < "$metadata_file"

{
  while IFS=$'\t' read -r repo title extra || [[ -n "${repo:-}" ]]; do
    [[ -z "${repo:-}" || "$repo" =~ ^# ]] && continue

    description="${descriptions[$repo]:-}"
    homepage="${homepages[$repo]:-}"
    og_url="${og_urls[$repo]:-}"

    if [[ -z "$description" ]]; then
      description="TODO description"
    fi

    printf '### %s\n\n' "$title"
    printf '> %s\n' "$description"
    if [[ -n "${extra:-}" ]]; then
      printf '>\n> %s\n' "$extra"
    fi
    printf '\n'

    if [[ -n "$homepage" ]]; then
      printf -- '- [Website](%s)\n' "$homepage"
    fi
    printf -- '- [Source code](https://github.com/%s/%s)\n\n' "$owner" "$repo"

    if [[ -n "$og_url" ]]; then
      printf '<img src="%s" width="50%%" alt="%s" />\n\n' "$og_url" "$title"
    fi
  done
} < "$projects_file" > "$section_file"

awk -v section_file="$section_file" '
  /<!-- personal-projects:start -->/ {
    print
    while ((getline line < section_file) > 0) {
      print line
    }
    close(section_file)
    skip = 1
    next
  }
  /<!-- personal-projects:end -->/ {
    skip = 0
    print
    next
  }
  !skip {
    print
  }
' "$readme" > "${readme}.tmp"

mv "${readme}.tmp" "$readme"
echo "Updated personal projects section in ${readme}" >&2
