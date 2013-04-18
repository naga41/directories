directories Cookbook
====================

This cookbook makes directories.

Requirements
------------

none.

Attributes
----------

no attributes.

Usage
-----
#### directories::default

Make data_bags "directories" and data_bag_item "directory.json" like below in your repository.

```json.
{
  "id": "directory",
  "directories":[
    {
      "roles": [
        "web"
      ],
      "name":  "/var/www",
      "owner": "nginx",
      "group": "root",
      "mode":  "0755"
    },
    {
      "name":  "/var/log/sample",
      "owner": "sample",
      "group": "root",
      "mode":  "0755"
    },
  ]
}
```

Authors
-------------------
Authors: naga41
