---
theme: dashboard
title: rand - fileattachment, csv, sql
toc: false
---

```js
import { dotplot } from "/components/dotplot.js";
const sql = DuckDBClient.sql({ rand: FileAttachment("data/rand-xy.csv") });
```

```sql id=data
SELECT * FROM rand
```

<div class="card">${x1y1}</div>

```js
const x1y1 = dotplot(data, "x1", "y1", "r");
```
