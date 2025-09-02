import json
from patricio_dataset_144 import names   # import the list from target_names.py

# Convert to set for faster lookup
target_names = set(names)

print(f"Filtering dataset for {len(target_names)} target names.")

# Load dataset (assuming JSONL file)
data = []
with open("ProofNet_all_filtered_domain.jsonl", "r", encoding="utf-8") as f:
    for line in f:
        data.append(json.loads(line))

# Filter items whose "name" is in the list
filtered = [item for item in data if item["name"] in target_names]

# Save filtered results
with open("filtered.jsonl", "w", encoding="utf-8") as f:
    for item in filtered:
        f.write(json.dumps(item, ensure_ascii=False) + "\n")

found_names = {item["name"] for item in filtered}
missing = target_names - found_names

print(f"Filtering dataset for {len(target_names)} target names.")
print(f"Selected {len(filtered)} items out of {len(data)}")

if missing:
    print(f"⚠️ Warning: {len(missing)} names not found in dataset!")
    for name in sorted(missing):
        print("   -", name)
else:
    print("✅ All target names matched successfully.")