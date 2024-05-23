import json

with open("target/manifest.json") as f:
    data = json.load(f)

tests = [v for name, v in data["nodes"].items() if v["resource_type"] == "test"]
out_dict = {}
for test in tests:
    node_name = test.get("attached_node")
    test_metadata = test.get("test_metadata", {})
    test_namespace = test_metadata.get("namespace")
    test_name = test_metadata.get("name", None)
    adj_test_name = (
        f"{test_namespace}.{test_name}" if test_namespace is not None else test_name
    )
    if node_name is None or adj_test_name is None:
        continue

    column_name = test.get("column_name")
    out_dict_it = out_dict.setdefault(node_name, {})
    if column_name is None:
        out_dict_it.setdefault("tests", []).append(adj_test_name)
    else:
        (
            out_dict_it.setdefault("columns", {})
            .setdefault(column_name, [])
            .append(adj_test_name)
        )

breakpoint()
