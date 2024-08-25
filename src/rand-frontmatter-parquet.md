---
theme: dashboard
title: rand - frontmatter, parquet
toc: false
sql:
  rand: data/rand-xy.parquet
---

```js
import { dotplot } from "/components/dotplot.js";
```

```sql id=data
SELECT * FROM rand
```

<div class="card">${x1y1}</div>

```js
const x1y1 = dotplot(data, "x1", "y1", "r");
```
