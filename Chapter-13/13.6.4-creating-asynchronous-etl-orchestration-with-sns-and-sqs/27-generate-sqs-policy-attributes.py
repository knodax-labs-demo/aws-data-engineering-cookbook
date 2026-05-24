import json

with open("sqs-policy.json") as f:
    policy = json.load(f)

attributes = {
    "Policy": json.dumps(policy)
}

with open("sqs-policy-attributes.json", "w") as f:
    json.dump(attributes, f)
