---
theme: dashboard
title: rand - generator, fileattachment, csv
toc: false
---

```js
import { dotplot } from "/components/dotplot.js";
const data = FileAttachment("data/rand-xy.csv").csv({ typed: true });
```

<div class="card">${x1y1}</div>

```js
const x1y1 = dotplot([data, "x1", "y1", "r"]);
```
