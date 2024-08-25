---
theme: dashboard
title: rand - fileattachment, parquet, db.query
toc: false
---

```js
import { dotplot } from "/components/dotplot.js";
const db = DuckDBClient.of({ rand: FileAttachment("data/rand-xy.parquet") });
```

```js
const data = db.query("SELECT * FROM rand");
```

<div class="card">${x1y1}</div>

```js
const x1y1 = dotplot(data, "x1", "y1", "r");
```
