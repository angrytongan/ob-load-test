---
theme: dashboard
title: rand - fileattachment, parquet, parquet
toc: false
---

```js
import { dotplot } from "/components/dotplot.js";
const data = FileAttachment("data/rand-xy.parquet").parquet();
```

<div class="card">${x1y1}</div>

```js
const x1y1 = dotplot(data, "x1", "y1", "r");
```
