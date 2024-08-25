import {resize} from "npm:@observablehq/stdlib";
import * as d3 from "npm:d3";
import * as Plot from "npm:@observablehq/plot";

export const dotplot = (input, x, y) => {
  return resize((width) =>
    Plot.plot({
      width,
      height: 200,
      marks: [
        Plot.dot(input, {
          x: x,
          y: y,
          r: 2,
          fill: (d) => d3.schemeTableau10[Number(d.r) - 1],
        }),
      ],
    })
  );
};
