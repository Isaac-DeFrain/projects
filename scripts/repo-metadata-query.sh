#!/nix/store/3hgg7pr65imdrifqqh3flg3arvkc2r22-bash-5.3p3/bin/bash

script_dir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
root_dir="$(cd "${script_dir}/.." && pwd)"
owner="Isaac-DeFrain"
mapfile -t repos < <(grep -v '^[[:space:]]*$' "${root_dir}/repos.txt" | grep -v '^#')

output_file="${root_dir}/.repo-metadata"
: > "$output_file"

for repo in "${repos[@]}"; do
  echo "Querying $repo..." >&2
  metadata="$(gh api graphql -f owner="$owner" -f name="$repo" -f query='
    query($owner: String!, $name: String!) {
      repository(owner: $owner, name: $name) {
        homepageUrl
        openGraphImageUrl
      }
    }
  ')"

  homepage="$(jq -r '.data.repository.homepageUrl // empty' <<< "$metadata")"
  og_url="$(jq -r '.data.repository.openGraphImageUrl // empty' <<< "$metadata")"

  printf '%s\t%s\t%s\n' "$repo" "$homepage" "$og_url" >> "$output_file"
done

echo "Wrote ${#repos[@]} entries to ${output_file}" >&2
