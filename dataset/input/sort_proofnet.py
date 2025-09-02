import json
from collections import defaultdict
import random
# {'Analysis': 88, 'Topology': 60, 'Algebra': 190, 'Number Theory': 21, 'Olympiad': 12}
# Total unique domains: 5
# Total entries: 371


# Read JSON lines
data = []
with open("ProofNet_all_filtered_domain.jsonl", "r", encoding="utf-8") as f:
    for line in f:
        data.append(json.loads(line))

# Count how many per domain
collection_by_domain = defaultdict(list)
for item in data:
    collection_by_domain[item["domain"]].append(item)

# Now sample the 1/3 of the each domain
output = defaultdict(list)
for domain, items in collection_by_domain.items():
    sampled_items = random.sample(items, max(1, len(items) // 3))
    output[domain] = sampled_items

for domain, items in output.items():
    print(f"{domain}: {len(items)} sampled out of {len(collection_by_domain[domain])}")

# Optionally, write to file
with open("test_data_one_third.jsonl", "w", encoding="utf-8") as f:
    for domain_items in output.values():
        for item in domain_items:
            f.write(json.dumps(item, ensure_ascii=False) + "\n")
