#!/nix/store/3hgg7pr65imdrifqqh3flg3arvkc2r22-bash-5.3p3/bin/bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root_dir="$(cd "${script_dir}/.." && pwd)"

"${script_dir}/repo-metadata-query.sh"

output_file="${root_dir}/.og-image-urls"
metadata_file="${root_dir}/.repo-metadata"
: > "$output_file"

while IFS= read -r line || [[ -n "$line" ]]; do
  [[ -z "$line" ]] && continue

  repo="$(awk -F'\t' '{ print $1 }' <<< "$line")"
  og_url="$(awk -F'\t' '{ print $4 }' <<< "$line")"

  printf '%s\t%s\n' "$repo" "$og_url" >> "$output_file"
done < "$metadata_file"

echo "Wrote URLs to ${output_file}" >&2
