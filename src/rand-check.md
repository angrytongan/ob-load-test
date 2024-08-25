---
theme: dashboard
title: rand - check random variance
toc: false
sql:
  csv_rand: data/rand-xy.csv
  parquet_rand: data/rand-xy.parquet
---

```sql id=csv
SELECT r, count(r) AS count
FROM csv_rand
GROUP BY r
```

```sql id=parquet
SELECT r, count(r) AS count
FROM parquet_rand
GROUP BY r
```

```js
const freq = (data) =>
  resize((width) =>
    Plot.plot({
      width,
      height: 200,
      marks: [
        Plot.lineY(data, {
          x: "r",
          y: "count",
          tip: true,
        }),
        Plot.dot(data, {
          x: "r",
          y: "count",
          r: 10,
          fill: (d) => d3.schemeTableau10[d.r - 1],
        }),
      ],
    })
  );
```

<div class="card">
    <h2>csv file</h2>
    ${freq(csv)}
</div>

<div class="card">
    <h2>parquet file</h2>
    ${freq(parquet)}
</div>
